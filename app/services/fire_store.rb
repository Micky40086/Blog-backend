
class FireStore
    def initialize(admin, title = nil, content = nil, thumbnail = nil, publish_date = nil)
        @admin = admin
        @title = title
        @content = content
        @thumbnail = thumbnail
        @publish_date = publish_date
    end

    def posts
        query = $firestore.col(:users)
        admins = query.where(:email, :==, @admin.email)
        if admins.get.count == 0
            return []
        else
            admins.get do |admin|
                if admin[:email] == @admin.email
                    return query.doc(admin.document_id).col(:posts)
                end
            end
        end
    end

    def create_post
        query = $firestore.col(:users)
        admins = query.where(:email, :==, @admin.email)
        if admins.get.count == 0
            new_admin = query.add({ email: @admin.email })
            new_admin.col(:posts).add({ title: @title, content: @content, thumbnail: @thumbnail, publish_date: @publish_date })
        else
            admins.get do |admin|
                if admin[:email] == @admin.email
                    posts = query.doc(admin.document_id).col(:posts)
                    posts.add({ title: @title, content: @content, thumbnail: @thumbnail, publish_date: @publish_date })
                end
            end
        end

        # query.get do |user|
        #   if user[:email] == @admin.email
        #     posts = $firestore.col(:users).doc(user.document_id).collection("posts")
        #     posts.add({ title: @title, content: @content })
        #   end
        # end
    end

    def get_post(post_id)
        query = $firestore.col(:users)
        admins = query.where(:email, :==, @admin.email)
        if admins.get.count != 0
            admins.get do |admin|
                if admin[:email] == @admin.email
                    post = query.doc(admin.document_id).col(:posts).doc(post_id)
                    return post
                end
            end
        end
        return nil
    end

    def update_post(post_id)
        query = $firestore.col(:users)
        admins = query.where(:email, :==, @admin.email)
        if admins.get.count == 0
            new_admin = query.add({ email: @admin.email })
            new_admin.col(:posts).add({ title: @title, content: @content, thumbnail: @thumbnail })
        else
            admins.get do |admin|
                if admin[:email] == @admin.email
                    post = query.doc(admin.document_id).col(:posts).doc(post_id)
                    post.update({ title: @title, content: @content, thumbnail: @thumbnail }.compact)
                end
            end
        end
    end

    def delete_post(post_id)
        query = $firestore.col(:users)
        admins = query.where(:email, :==, @admin.email)
        if admins.get.count != 0
            admins.get do |admin|
                if admin[:email] == @admin.email
                    post = query.doc(admin.document_id).col(:posts).doc(post_id)
                    post.delete
                end
            end
        end
    end

    private

    def select_admin_column(col,column)

    end
end