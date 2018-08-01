CarrierWave.configure do |config|
    config.storage                             = :gcloud
    config.gcloud_bucket                       = 'blog-697d7.appspot.com'
    config.gcloud_bucket_is_public             = true
    config.gcloud_authenticated_url_expiration = 600
    
    config.gcloud_attributes = {
      expires: 600
    }
    
    config.gcloud_credentials = {
      gcloud_project: 'blog-697d7',
      gcloud_keyfile: File.join(Rails.root, 'config', 'blog-aa2368722bf9.json')
    }
end

# CarrierWave.configure do |config|
#     config.fog_provider = 'fog/google'                        # required
    
#     config.fog_directory = 'blog-697d7.appspot.com'
#     config.fog_credentials = {
#         provider:                         'Google',
#         host:                             'storage.googleapis.com',
#         google_storage_access_key_id:     'fe8182c6cfbcf0a8dfdf1f9c2ddb755692d9c481',
#         google_storage_secret_access_key: '-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC+5XiANh4/E9jB\n1W/2A48u2YU+uXTt2WwDil1BDQtybw80ey1eI+RAfzPs6XvrB9/XKW4+aT/jgDFs\nn2x14NUovCo3xyb8tXygwfCyqtrSC3u6GuTIUctANRI4fsWQvA+FGWFIqbZV5dnj\n6XMAK6Wnvlo4ddRDu7s12oETtptoWipm2+ZYVlB1OZ5PFyZoHcoBy/w9X2WbnSaK\naWKKz47Gi9EiD0mWbtyP+xQKWM2EpFvSucus3U4EY8ELTLwpLm6u5JkFacj42mLL\nVdRliZDVEBRPi2IZQCu/xr6zyZhgVlaa0jw1GHOZQWsL7qU9r6fEXwpWPnMOUBQz\ngFZFeoCtAgMBAAECggEAA+c1O4nfvHJvcCcpDuKrvs17x/iKx4I2jyv5FCdsIH7c\n1LngB5i8RgVTznhHrFqQ3Rlfw67rO3+Xgx0PXqmmMhsG0fUkeu5LCg5tGXoc10ac\n1QVPwDjL6xgqszUEXR07RAFs18uAiukUN3DChTJfRLrDpXvjRy9DeKprETgenVeR\njdWotFVhEjk04A7rwlHeLmiYmMsAhHA3LDICxDsLYY/2iPWjigt27d7ttwjrHU93\nTogw+CQzINFYX/vXclCKN7oPj/iV07zxXE/JtP2IPgmDeZ8WSBZbSr15o6jznp3j\nF7+w1eQA7JdMAc7p7CG1GXEHuHlPr0N43w1Qni6igQKBgQDt9ICIKB/mt9yYqiYV\ncTxZdKfl/6eUjpBdo4qX/vOomNv5E5mVFKKw6drxN3X1OiQdiqAN6eEzQkoDRm+A\nyzK/LTwtzvwnbFU//n+Vj6Or0zCEnuqkHCcPSO8zUCmbuDVNAaIu1AtFH8jCdWmG\nMfBdK5fSEPtoBG4m1IzUws//+QKBgQDNX2ccFpi5Sk0lf4ksPN/QyPsC3wlVXGJy\neJo2oayYHcOxq9jz/oyOvLIsYgx20IDjug8jVXvcqlIQC+Q35gJ2JF/1JA9LIoi/\nN5pA+rlWMCca75C2gS3c0+zed8NG3VVwczYN11bE53iLVoj+XllrnnwbtWYqQpfG\nrgIWnxVbVQKBgHaEq2glpA4EUclwJdvUNJzRr7as6Uji4SDijes6vx2gVR/wFTTd\nvFKlh7lRSF1GAir8ms+TR+mCAN80u+DIVJRH8YtXZtwz5xoipmVVz82LOMU1aeUn\naIUCbLGAIdk/nLyoLaFpV9usAxBn7pE6Wl/tkIa+kpmyazLH9wUZqwPxAoGBAME6\nyCr3X87Gh/uGGaxTwkoRL4suCvwTplUKAB7y0w90wdGDXOeFUv5hsEpuHkgUOZEK\nWH/oSFgAsKGEbr/hW+OIqfheaz1ISt2PFUWaIZNkTwba7I+qz1n809slV8hvK5pX\n7D3tpCgzmYmQa+jZIM1PGnp/nJaafW9j/XcHSvLZAoGAaprGO4RUuqCJ3YF2LprR\nGCx7dXfjOAczCzcroyw4+nko7DIpL3kUBBCVBMDjBtCbhY01JuSgjVioafBbKi2w\nbzjrAFs2QbkKGzkKRhMpqzA5Swb8cwdupPF6WUU/kfA37AhmNMYTsHIUsE17Isxv\nTjViQerDK3c+1urZZ4NcQw0=\n-----END PRIVATE KEY-----\n'
#     }
# end