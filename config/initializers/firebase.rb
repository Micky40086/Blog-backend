require "google/cloud/firestore"
$firestore = Google::Cloud::Firestore.new(
    project_id: "blog-697d7",
    credentials: File.join(Rails.root, 'config', 'keyfile.json')
)

#require "google/cloud/storage"
#$firestorage = Google::Cloud::Storage.new(
#  project_id: "blog-697d7",
#  credentials: File.join(Rails.root, 'config', 'blog-fe8182c6cfbc.json')
#)   

