require 'simplecov'
SimpleCov.start 'rails' do
  add_filter 'spec/rails_helper.rb'
  add_filter 'app/channels/application_cable/channel.rb'
  add_filter 'app/channels/application_cable/connection.rb'
  add_filter 'app/jobs/application_job.rb'
  add_filter 'app/mailers/application_mailer.rb'
end

# Require webmock for mocking api call data
require 'webmock/rspec'

RSpec.configure do |config|
  
  # config.before(:each) do

  #   stub_request(:get, "https://api.github.com/repos/tjroeder/little-esty-shop").
  #   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
  #   to_return(status: 200, body: '{"id":444193951,"node_id":"R_kgDOGnncnw","name":"little-esty-shop","full_name":"tjroeder/little-esty-shop","private":false,"owner":{"login":"tjroeder","id":78194232,"node_id":"MDQ6VXNlcjc4MTk0MjMy"}', headers: {})

  #   stub_request(:get, "https://api.github.com/repos/tjroeder/little-esty-shop/commits?per_page=100").
  #   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
  #   to_return(status: 200, body: '', headers: {})

  #   stub_request(:get, "https://api.github.com/repos/tjroeder/little-esty-shop/pulls?per_page=100").
  #   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
  #   to_return(status: 200, body: '[
  #     {
  #       "sha": "763758e263953e2f2793609697008e36de6275f8",
  #       "node_id": "C_kwDOGnncn9oAKDc2Mzc1OGUyNjM5NTNlMmYyNzkzNjA5Njk3MDA4ZTM2ZGU2Mjc1Zjg",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder (he/him)",
  #           "email": "78194232+tjroeder@users.noreply.github.com",
  #           "date": "2022-01-11T20:22:07Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-11T20:22:07Z"
  #         },
  #         "message": "Merge pull request #76 from tjroeder/admin_top_merchants\n\nResolves #11",
  #         "tree": {
  #           "sha": "61cbb0c2baea7359be8d2b4f9d1b7e2d3176c2d9",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/61cbb0c2baea7359be8d2b4f9d1b7e2d3176c2d9"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/763758e263953e2f2793609697008e36de6275f8",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3ebvCRBK7hj4Ov3rIwAAD4MIAKpyW/1igGMVLlJWjqmGxaGj\nOjmTA0Y5X8m4o1yhsTWeosZqf6dmcxarzJiDqrnTn2uTGPipYS/c2QnJU1idwtBd\nvSDKBEI9TD46Sfj+OyCULgF8EblxAjAEGCDjXD0lxczP4YFtXLrl8advvBlyCloU\nq82LTgrWSn68O1CGgGInGXC42aQ3tks055iBdB1vKo0xRU9sl2bOcGPcpdGz7Qp8\nRn82OFttn3gWvSk9cCKtLoFVTMrBCAvPrbQCvQUagZgwTG1PA6Ea8LyFMyQnBFKc\nrDantWhKq265GbjCJkVNZ7Q5OrgIBQdiofx7L6bZ1mc8sooHxdsrR7HNhPfhcQ4=\n=S52/\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 61cbb0c2baea7359be8d2b4f9d1b7e2d3176c2d9\nparent c966e156140ba03cf31f173e74dd668d666e2a13\nparent a8abcf446c120a6d5c0fa6b976784ceed4ad9f20\nauthor Tim Roeder (he/him) <78194232+tjroeder@users.noreply.github.com> 1641932527 -0700\ncommitter GitHub <noreply@github.com> 1641932527 -0700\n\nMerge pull request #76 from tjroeder/admin_top_merchants\n\nResolves #11"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/763758e263953e2f2793609697008e36de6275f8",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/763758e263953e2f2793609697008e36de6275f8",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/763758e263953e2f2793609697008e36de6275f8/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "c966e156140ba03cf31f173e74dd668d666e2a13",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/c966e156140ba03cf31f173e74dd668d666e2a13",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/c966e156140ba03cf31f173e74dd668d666e2a13"
  #         },
  #         {
  #           "sha": "a8abcf446c120a6d5c0fa6b976784ceed4ad9f20",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a8abcf446c120a6d5c0fa6b976784ceed4ad9f20",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a8abcf446c120a6d5c0fa6b976784ceed4ad9f20"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "c966e156140ba03cf31f173e74dd668d666e2a13",
  #       "node_id": "C_kwDOGnncn9oAKGM5NjZlMTU2MTQwYmEwM2NmMzFmMTczZTc0ZGQ2NjhkNjY2ZTJhMTM",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "90228086+WadeNaughton@users.noreply.github.com",
  #           "date": "2022-01-11T18:25:08Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-11T18:25:08Z"
  #         },
  #         "message": "Update README.md",
  #         "tree": {
  #           "sha": "07efd0672ef109c00e295a0c2734c5910f7e062f",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/07efd0672ef109c00e295a0c2734c5910f7e062f"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/c966e156140ba03cf31f173e74dd668d666e2a13",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3cuECRBK7hj4Ov3rIwAA78wIADAMl4QYlo4I3a0s5InejMRe\n+K1vf/Uni0Jbl7ivuCHBbnLWt4cJRutAu2hdfHUZ2JFy4Dh1HIuqeWeEkbMz1/tH\n4t40LkbPrgDopd81Adyf7UtOOPSmIGa0SoGDWG2v6ldr71wXSPFTlHxFLcoL40vJ\n9zBUWTn9UJDipXxYLg0Sc2sfGKM6URMpyGd7CMD9kDWtWR+ZatXdr3x/yIRnpD0I\n0gsX5sPUOt+Py8riZta9GYQdBXKFKUKuoAHp8zdKxHeCFVYvVMJiUs7Ywq0ZqlYT\nw0gEMiDs8yHtOubZPflSEx4gFlGTc+xGKhQ49FlJ/vCPqcoHZGU2ynKfv/qBZHY=\n=eL5G\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 07efd0672ef109c00e295a0c2734c5910f7e062f\nparent a47b13cc0ed39d7d227a1e4f8982da6045a13696\nauthor Wade Naughton <90228086+WadeNaughton@users.noreply.github.com> 1641925508 -0500\ncommitter GitHub <noreply@github.com> 1641925508 -0500\n\nUpdate README.md"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/c966e156140ba03cf31f173e74dd668d666e2a13",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/c966e156140ba03cf31f173e74dd668d666e2a13",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/c966e156140ba03cf31f173e74dd668d666e2a13/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "a47b13cc0ed39d7d227a1e4f8982da6045a13696",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a47b13cc0ed39d7d227a1e4f8982da6045a13696",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a47b13cc0ed39d7d227a1e4f8982da6045a13696"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "a47b13cc0ed39d7d227a1e4f8982da6045a13696",
  #       "node_id": "C_kwDOGnncn9oAKGE0N2IxM2NjMGVkMzlkN2QyMjdhMWU0Zjg5ODJkYTYwNDVhMTM2OTY",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "90228086+WadeNaughton@users.noreply.github.com",
  #           "date": "2022-01-11T03:29:34Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-11T03:29:34Z"
  #         },
  #         "message": "Update README.md",
  #         "tree": {
  #           "sha": "d9eabe5358074c828d8f27849b9d9152538aa182",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/d9eabe5358074c828d8f27849b9d9152538aa182"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/a47b13cc0ed39d7d227a1e4f8982da6045a13696",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3PmeCRBK7hj4Ov3rIwAAVbIIAFghvYwc4MbZ6doDZcEqnx2j\nv64XpZot7UNDBOhQxyvryDtdHSKI54Cf/6eHOJi05QFd7gp6Si6b56PQCVc6JWsr\n8ue6MTfJi5deUHVLbaK0lJsyG3dSOtd1ImugQap8TF+jgMqMGKi/Hw+34EtIuXrK\ncbEG6bJIIYgYBMPM8hQzkXEJROAM4LXE2bTAZwL+tmHmGoaVZG2ywjY+b15CUHbX\nkgz43gEO3BNs+PV/O18PAl6LhdTFnQzMVrvMCQ3fr4BFDXA6C3B/QwHBEph8rj9E\nBmV2Rma1Almln1nLHghs/dA9dOvyyTPFjk+w7EYLoJHFbkvXbSyF5YQYy9FzUQ0=\n=PDiX\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree d9eabe5358074c828d8f27849b9d9152538aa182\nparent 9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a\nauthor Wade Naughton <90228086+WadeNaughton@users.noreply.github.com> 1641871774 -0500\ncommitter GitHub <noreply@github.com> 1641871774 -0500\n\nUpdate README.md"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a47b13cc0ed39d7d227a1e4f8982da6045a13696",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a47b13cc0ed39d7d227a1e4f8982da6045a13696",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a47b13cc0ed39d7d227a1e4f8982da6045a13696/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "a8abcf446c120a6d5c0fa6b976784ceed4ad9f20",
  #       "node_id": "C_kwDOGnncn9oAKGE4YWJjZjQ0NmMxMjBhNmQ1YzBmYTZiOTc2Nzg0Y2VlZDRhZDlmMjA",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-11T03:20:38Z"
  #         },
  #         "committer": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-11T03:20:38Z"
  #         },
  #         "message": "merchant spec test issue resolved. passing",
  #         "tree": {
  #           "sha": "47fee1e4b1683aa972c4c63b7ca1b250ba058533",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/47fee1e4b1683aa972c4c63b7ca1b250ba058533"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/a8abcf446c120a6d5c0fa6b976784ceed4ad9f20",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a8abcf446c120a6d5c0fa6b976784ceed4ad9f20",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a8abcf446c120a6d5c0fa6b976784ceed4ad9f20",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a8abcf446c120a6d5c0fa6b976784ceed4ad9f20/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "d97b26d966242844a4aa0edb36c4d91a6b3daff8",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d97b26d966242844a4aa0edb36c4d91a6b3daff8",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d97b26d966242844a4aa0edb36c4d91a6b3daff8"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "d97b26d966242844a4aa0edb36c4d91a6b3daff8",
  #       "node_id": "C_kwDOGnncn9oAKGQ5N2IyNmQ5NjYyNDI4NDRhNGFhMGVkYjM2YzRkOTFhNmIzZGFmZjg",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-11T02:53:20Z"
  #         },
  #         "committer": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-11T02:53:20Z"
  #         },
  #         "message": "fixed routes to become restful for enable/disable merchant",
  #         "tree": {
  #           "sha": "d62532e77a7bde2e50bb403bcf3ab5bdc0c1fb89",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/d62532e77a7bde2e50bb403bcf3ab5bdc0c1fb89"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/d97b26d966242844a4aa0edb36c4d91a6b3daff8",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d97b26d966242844a4aa0edb36c4d91a6b3daff8",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d97b26d966242844a4aa0edb36c4d91a6b3daff8",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d97b26d966242844a4aa0edb36c4d91a6b3daff8/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d31f929b643a4e804c7bf05b8f46531ddd89029e"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a",
  #       "node_id": "C_kwDOGnncn9oAKDljOTVkMGRlYTdlZDU4YzRhNjlmOGE1ZThhYTg4NDI5ZWZkNGJiMmE",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder (he/him)",
  #           "email": "78194232+tjroeder@users.noreply.github.com",
  #           "date": "2022-01-11T01:08:18Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-11T01:08:18Z"
  #         },
  #         "message": "Merge pull request #74 from tjroeder/refactor_mer\n\nResolves #35, Resolves #34, Resolves #33, Resolves #32, Resolves #31, Resolves #30, Resolves #29",
  #         "tree": {
  #           "sha": "5121bf22c56e1f14c3493f1c6602de41464acf20",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/5121bf22c56e1f14c3493f1c6602de41464acf20"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3NiCCRBK7hj4Ov3rIwAABy0IAGVXO1H+W86Bx5fwPqmdxmNn\nH7wX3SQVlFb2GzVq7sFFq26ZuGkQDW/+qaTUTPxK6gKabkzPMM5TTm298mwVPv99\nEs86QghSSkVLCL3MeJtci+E1rlWCC1tXD3spVfuuNrxgTcA1Iqp59ecRIXPo/SEn\nN2UNAH6z2t6B1XvyS0QVzM9+RcuEQK/Rl9F74JNQyogzQ9XGawHN36GhYFExXQi6\nW/rR9rzhuqBLck9q/5mjLn9fE5UbYoRTsf4wvFnsY8xTIPjH5sgIuCgNV7yVO+iZ\ngGIbUXLODXqbm6nSgOknXEeuhgB0nJxPem4hE0CPslC3kvpW1w7a13t768C8/rc=\n=DK/5\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 5121bf22c56e1f14c3493f1c6602de41464acf20\nparent d31f929b643a4e804c7bf05b8f46531ddd89029e\nparent 889710529320d167ce61f63b4470a9b5b24d1af6\nauthor Tim Roeder (he/him) <78194232+tjroeder@users.noreply.github.com> 1641863298 -0700\ncommitter GitHub <noreply@github.com> 1641863298 -0700\n\nMerge pull request #74 from tjroeder/refactor_mer\n\nResolves #35, Resolves #34, Resolves #33, Resolves #32, Resolves #31, Resolves #30, Resolves #29"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9c95d0dea7ed58c4a69f8a5e8aa88429efd4bb2a/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d31f929b643a4e804c7bf05b8f46531ddd89029e"
  #         },
  #         {
  #           "sha": "889710529320d167ce61f63b4470a9b5b24d1af6",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/889710529320d167ce61f63b4470a9b5b24d1af6",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/889710529320d167ce61f63b4470a9b5b24d1af6"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #       "node_id": "C_kwDOGnncn9oAKGQzMWY5MjliNjQzYTRlODA0YzdiZjA1YjhmNDY1MzFkZGQ4OTAyOWU",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder (he/him)",
  #           "email": "78194232+tjroeder@users.noreply.github.com",
  #           "date": "2022-01-11T00:07:10Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-11T00:07:10Z"
  #         },
  #         "message": "Merge pull request #72 from tjroeder/enable_disable\n\nResolves #14, Resolves #13, Resolves #12",
  #         "tree": {
  #           "sha": "9c9fceff152a9908cd2d4d7287ce8350e75adddf",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/9c9fceff152a9908cd2d4d7287ce8350e75adddf"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3MouCRBK7hj4Ov3rIwAAIX8IABIT/zMSPdVJrM8uK5X74nl8\nwL0K/x8AVq/BZJJts8Ti14oi5KAVMb/RE3xo1yR/wKeOKtGmwg5F27BHHWNdGX+9\n4SGpAlEu3ERSw9PFyUtjcc9MNigYxMos2KYUPu+RB5w3oWevCOioyKXNKTyqIaME\nMyy7WI0ni5/X4n43ScEJmhWTUPSe+Y58uvdhpoHCMGBzS7FMSym3u+NRLrQN20YI\nci/t1W47dA4KIxUux5XuDMYFA9C3nHUucL/dR9zYXpZkX6kQ+rvdbtR0aV/EK6eH\nYY46e5clglbEKj8Ka9TmIJko02eGUdTPZuUsrjFPA8XsYwqQZ3ZY3tYgOD21zUc=\n=+QYd\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 9c9fceff152a9908cd2d4d7287ce8350e75adddf\nparent 8d24f616e3422c6266501c87501bbb966beba7e4\nparent 5c08b92519d6ef8d6de4247ef6b055a29b39c987\nauthor Tim Roeder (he/him) <78194232+tjroeder@users.noreply.github.com> 1641859630 -0700\ncommitter GitHub <noreply@github.com> 1641859630 -0700\n\nMerge pull request #72 from tjroeder/enable_disable\n\nResolves #14, Resolves #13, Resolves #12"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d31f929b643a4e804c7bf05b8f46531ddd89029e",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d31f929b643a4e804c7bf05b8f46531ddd89029e/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "8d24f616e3422c6266501c87501bbb966beba7e4",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/8d24f616e3422c6266501c87501bbb966beba7e4",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/8d24f616e3422c6266501c87501bbb966beba7e4"
  #         },
  #         {
  #           "sha": "5c08b92519d6ef8d6de4247ef6b055a29b39c987",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/5c08b92519d6ef8d6de4247ef6b055a29b39c987",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/5c08b92519d6ef8d6de4247ef6b055a29b39c987"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "5c08b92519d6ef8d6de4247ef6b055a29b39c987",
  #       "node_id": "C_kwDOGnncn9oAKDVjMDhiOTI1MTlkNmVmOGQ2ZGU0MjQ3ZWY2YjA1NWEyOWIzOWM5ODc",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder (he/him)",
  #           "email": "78194232+tjroeder@users.noreply.github.com",
  #           "date": "2022-01-11T00:05:43Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-11T00:05:43Z"
  #         },
  #         "message": "Merge branch 'main' into enable_disable",
  #         "tree": {
  #           "sha": "9c9fceff152a9908cd2d4d7287ce8350e75adddf",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/9c9fceff152a9908cd2d4d7287ce8350e75adddf"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/5c08b92519d6ef8d6de4247ef6b055a29b39c987",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3MnXCRBK7hj4Ov3rIwAAVFAIACL+5iepMHABhl4hJGoENC46\nImKeqxI3dcd+yV6q2P/XgTMKm3+UenNkO3o06HatQy2JuZZvkUBouqF3Rc8dDaAZ\nqrehPXXn5XT5iowpB/6p6L+Q+yZQijM+UrdwGDmQJf5HUCiYhmm+e1SWvNTcZ2XW\nP2rsxdeLbO37PwSdfw4NbiYYF44Vi8UDB6dx4I4ybL3yvQlmZFdsf7QcwKALLH0w\nq6NqlVhqBV5x3nqpwrQUMBt1po4CRASrATOkMM3pad6jBBHoee+fDXLOeqEnKaw4\nNF2F9fWPq1ZpQhE0oHEtEZ52ygTJdFge+dA2VkPinEQ2Uj48y6hLhAsDD/wKaFc=\n=j9wW\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 9c9fceff152a9908cd2d4d7287ce8350e75adddf\nparent 9cc2cb9956b115edda0a080bef49aa1d73d1d63e\nparent 8d24f616e3422c6266501c87501bbb966beba7e4\nauthor Tim Roeder (he/him) <78194232+tjroeder@users.noreply.github.com> 1641859543 -0700\ncommitter GitHub <noreply@github.com> 1641859543 -0700\n\nMerge branch 'main' into enable_disable"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/5c08b92519d6ef8d6de4247ef6b055a29b39c987",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/5c08b92519d6ef8d6de4247ef6b055a29b39c987",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/5c08b92519d6ef8d6de4247ef6b055a29b39c987/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "9cc2cb9956b115edda0a080bef49aa1d73d1d63e",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9cc2cb9956b115edda0a080bef49aa1d73d1d63e",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9cc2cb9956b115edda0a080bef49aa1d73d1d63e"
  #         },
  #         {
  #           "sha": "8d24f616e3422c6266501c87501bbb966beba7e4",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/8d24f616e3422c6266501c87501bbb966beba7e4",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/8d24f616e3422c6266501c87501bbb966beba7e4"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "889710529320d167ce61f63b4470a9b5b24d1af6",
  #       "node_id": "C_kwDOGnncn9oAKDg4OTcxMDUyOTMyMGQxNjdjZTYxZjYzYjQ0NzBhOWI1YjI0ZDFhZjY",
  #       "commit": {
  #         "author": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:36:55Z"
  #         },
  #         "committer": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:36:55Z"
  #         },
  #         "message": "Merge branch 'most_new_main' into refactor_mer",
  #         "tree": {
  #           "sha": "aae29473f1d092a02f170effdc91ffd7c6ff348f",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/aae29473f1d092a02f170effdc91ffd7c6ff348f"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/889710529320d167ce61f63b4470a9b5b24d1af6",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/889710529320d167ce61f63b4470a9b5b24d1af6",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/889710529320d167ce61f63b4470a9b5b24d1af6",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/889710529320d167ce61f63b4470a9b5b24d1af6/comments",
  #       "author": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "9e8c457acc96d6e5c03341ce5e5b7885cde025d0",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9e8c457acc96d6e5c03341ce5e5b7885cde025d0",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9e8c457acc96d6e5c03341ce5e5b7885cde025d0"
  #         },
  #         {
  #           "sha": "8d24f616e3422c6266501c87501bbb966beba7e4",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/8d24f616e3422c6266501c87501bbb966beba7e4",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/8d24f616e3422c6266501c87501bbb966beba7e4"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "9e8c457acc96d6e5c03341ce5e5b7885cde025d0",
  #       "node_id": "C_kwDOGnncn9oAKDllOGM0NTdhY2M5NmQ2ZTVjMDMzNDFjZTVlNWI3ODg1Y2RlMDI1ZDA",
  #       "commit": {
  #         "author": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:33:35Z"
  #         },
  #         "committer": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:33:35Z"
  #         },
  #         "message": "Modify test to match newer index page changes",
  #         "tree": {
  #           "sha": "c342b2418608a81c2a20035ff8500695e50fbb4e",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/c342b2418608a81c2a20035ff8500695e50fbb4e"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/9e8c457acc96d6e5c03341ce5e5b7885cde025d0",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9e8c457acc96d6e5c03341ce5e5b7885cde025d0",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9e8c457acc96d6e5c03341ce5e5b7885cde025d0",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9e8c457acc96d6e5c03341ce5e5b7885cde025d0/comments",
  #       "author": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "ed1346510f994a619247c011b59827a91868d1a3",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/ed1346510f994a619247c011b59827a91868d1a3",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/ed1346510f994a619247c011b59827a91868d1a3"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "ed1346510f994a619247c011b59827a91868d1a3",
  #       "node_id": "C_kwDOGnncn9oAKGVkMTM0NjUxMGY5OTRhNjE5MjQ3YzAxMWI1OTgyN2E5MTg2OGQxYTM",
  #       "commit": {
  #         "author": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:32:37Z"
  #         },
  #         "committer": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:32:37Z"
  #         },
  #         "message": "Remove unused test and refactor paths",
  #         "tree": {
  #           "sha": "1015aacd39d3c2d200579c71165a1696064a4dbf",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/1015aacd39d3c2d200579c71165a1696064a4dbf"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/ed1346510f994a619247c011b59827a91868d1a3",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/ed1346510f994a619247c011b59827a91868d1a3",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/ed1346510f994a619247c011b59827a91868d1a3",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/ed1346510f994a619247c011b59827a91868d1a3/comments",
  #       "author": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "e266218787c5d21c30aa89eda8bbba283211c3ae",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/e266218787c5d21c30aa89eda8bbba283211c3ae",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/e266218787c5d21c30aa89eda8bbba283211c3ae"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "e266218787c5d21c30aa89eda8bbba283211c3ae",
  #       "node_id": "C_kwDOGnncn9oAKGUyNjYyMTg3ODdjNWQyMWMzMGFhODllZGE4YmJiYTI4MzIxMWMzYWU",
  #       "commit": {
  #         "author": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:23:36Z"
  #         },
  #         "committer": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:23:36Z"
  #         },
  #         "message": "Modify items routes",
  #         "tree": {
  #           "sha": "74478c034d25a7a0fc875d560028f56d91a49b15",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/74478c034d25a7a0fc875d560028f56d91a49b15"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/e266218787c5d21c30aa89eda8bbba283211c3ae",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/e266218787c5d21c30aa89eda8bbba283211c3ae",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/e266218787c5d21c30aa89eda8bbba283211c3ae",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/e266218787c5d21c30aa89eda8bbba283211c3ae/comments",
  #       "author": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "82c284dbe83a4217bceeef77aae3ca863d113a05",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/82c284dbe83a4217bceeef77aae3ca863d113a05",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/82c284dbe83a4217bceeef77aae3ca863d113a05"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "82c284dbe83a4217bceeef77aae3ca863d113a05",
  #       "node_id": "C_kwDOGnncn9oAKDgyYzI4NGRiZTgzYTQyMTdiY2VlZWY3N2FhZTNjYTg2M2QxMTNhMDU",
  #       "commit": {
  #         "author": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:23:14Z"
  #         },
  #         "committer": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:23:14Z"
  #         },
  #         "message": "Modify button to work more efficiently",
  #         "tree": {
  #           "sha": "38455d52176787f8a3dec91147bf698f59a0f102",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/38455d52176787f8a3dec91147bf698f59a0f102"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/82c284dbe83a4217bceeef77aae3ca863d113a05",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/82c284dbe83a4217bceeef77aae3ca863d113a05",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/82c284dbe83a4217bceeef77aae3ca863d113a05",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/82c284dbe83a4217bceeef77aae3ca863d113a05/comments",
  #       "author": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "9400299f52cf50352dd5965821f0e71f2585c31b",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9400299f52cf50352dd5965821f0e71f2585c31b",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9400299f52cf50352dd5965821f0e71f2585c31b"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "9400299f52cf50352dd5965821f0e71f2585c31b",
  #       "node_id": "C_kwDOGnncn9oAKDk0MDAyOTlmNTJjZjUwMzUyZGQ1OTY1ODIxZjBlNzFmMjU4NWMzMWI",
  #       "commit": {
  #         "author": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:22:16Z"
  #         },
  #         "committer": {
  #           "name": "Arnaldo Aparicio",
  #           "email": "apaarn2211@gmail.com",
  #           "date": "2022-01-10T23:22:16Z"
  #         },
  #         "message": "Modify update method and remove status_change method",
  #         "tree": {
  #           "sha": "63f24b9dc3765805d7392ccb8d2cf03dc44b817f",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/63f24b9dc3765805d7392ccb8d2cf03dc44b817f"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/9400299f52cf50352dd5965821f0e71f2585c31b",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9400299f52cf50352dd5965821f0e71f2585c31b",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9400299f52cf50352dd5965821f0e71f2585c31b",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9400299f52cf50352dd5965821f0e71f2585c31b/comments",
  #       "author": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "arnaldoaparicio",
  #         "id": 88012780,
  #         "node_id": "MDQ6VXNlcjg4MDEyNzgw",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/88012780?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/arnaldoaparicio",
  #         "html_url": "https://github.com/arnaldoaparicio",
  #         "followers_url": "https://api.github.com/users/arnaldoaparicio/followers",
  #         "following_url": "https://api.github.com/users/arnaldoaparicio/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/arnaldoaparicio/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/arnaldoaparicio/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/arnaldoaparicio/subscriptions",
  #         "organizations_url": "https://api.github.com/users/arnaldoaparicio/orgs",
  #         "repos_url": "https://api.github.com/users/arnaldoaparicio/repos",
  #         "events_url": "https://api.github.com/users/arnaldoaparicio/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/arnaldoaparicio/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "8d24f616e3422c6266501c87501bbb966beba7e4",
  #       "node_id": "C_kwDOGnncn9oAKDhkMjRmNjE2ZTM0MjJjNjI2NjUwMWM4NzUwMWJiYjk2NmJlYmE3ZTQ",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "90228086+WadeNaughton@users.noreply.github.com",
  #           "date": "2022-01-10T21:51:44Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-10T21:51:44Z"
  #         },
  #         "message": "Merge pull request #71 from tjroeder/issue_#18\n\nResolves #18",
  #         "tree": {
  #           "sha": "950c702f383b010db4dcbf37a0931db4955a2b07",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/950c702f383b010db4dcbf37a0931db4955a2b07"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/8d24f616e3422c6266501c87501bbb966beba7e4",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh3KpwCRBK7hj4Ov3rIwAAhgcIABtcjSLb+HiF5Up2XXTsr4O+\nJbRqNUf1rS8eHUhvEIL6YOF7vadyxXmo14esDD+cVo426fVhWYLl8yRyYqs7rJGE\nb/q3l0As0UUTJr+IjrVz/okmzp2UJF+tguAxi7oX6JI1gbpGhO6sSWpEdjiBNvt0\nO3y9qrAD8WP7k7K0hpsp+2Nu5SHd8cIwUebQBczuT6S35rdJFCBH4wkFBTO0nUDw\nS3noAASZNEmmLIliOKV++oiU2wuBdQOUNdOHxUGA9zWkyWmAwM2S8Xb1vVMZkXTF\nOtMIbMXTczJvTg1G1gKwA0lBVLXEjaxNx4PmLiHR84r/YYmaOT8xWe4oNZy00Uk=\n=LgjN\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 950c702f383b010db4dcbf37a0931db4955a2b07\nparent 6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3\nparent a001a7bf89ee7a39e392755ed94b4378375a04c9\nauthor Wade Naughton <90228086+WadeNaughton@users.noreply.github.com> 1641851504 -0500\ncommitter GitHub <noreply@github.com> 1641851504 -0500\n\nMerge pull request #71 from tjroeder/issue_#18\n\nResolves #18"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/8d24f616e3422c6266501c87501bbb966beba7e4",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/8d24f616e3422c6266501c87501bbb966beba7e4",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/8d24f616e3422c6266501c87501bbb966beba7e4/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3"
  #         },
  #         {
  #           "sha": "a001a7bf89ee7a39e392755ed94b4378375a04c9",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a001a7bf89ee7a39e392755ed94b4378375a04c9",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a001a7bf89ee7a39e392755ed94b4378375a04c9"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "9cc2cb9956b115edda0a080bef49aa1d73d1d63e",
  #       "node_id": "C_kwDOGnncn9oAKDljYzJjYjk5NTZiMTE1ZWRkYTBhMDgwYmVmNDlhYTFkNzNkMWQ2M2U",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-10T19:29:52Z"
  #         },
  #         "committer": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-10T19:29:52Z"
  #         },
  #         "message": "fix test for admin merchant index",
  #         "tree": {
  #           "sha": "f99154328cc68c8ae722f079ab17ba1d723eebdd",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/f99154328cc68c8ae722f079ab17ba1d723eebdd"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/9cc2cb9956b115edda0a080bef49aa1d73d1d63e",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9cc2cb9956b115edda0a080bef49aa1d73d1d63e",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9cc2cb9956b115edda0a080bef49aa1d73d1d63e",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9cc2cb9956b115edda0a080bef49aa1d73d1d63e/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "d483f7c6a242c636d676b818209ea58f91def13e",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d483f7c6a242c636d676b818209ea58f91def13e",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d483f7c6a242c636d676b818209ea58f91def13e"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "d483f7c6a242c636d676b818209ea58f91def13e",
  #       "node_id": "C_kwDOGnncn9oAKGQ0ODNmN2M2YTI0MmM2MzZkNjc2YjgxODIwOWVhNThmOTFkZWYxM2U",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-10T19:07:12Z"
  #         },
  #         "committer": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-10T19:07:12Z"
  #         },
  #         "message": "test for new merchant created",
  #         "tree": {
  #           "sha": "4dde38d53efa07f73e736588fb84d8cddc99a5d0",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/4dde38d53efa07f73e736588fb84d8cddc99a5d0"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/d483f7c6a242c636d676b818209ea58f91def13e",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d483f7c6a242c636d676b818209ea58f91def13e",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d483f7c6a242c636d676b818209ea58f91def13e",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d483f7c6a242c636d676b818209ea58f91def13e/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "15183fb104d1b893aea35cf50af8ae5ac767805c",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/15183fb104d1b893aea35cf50af8ae5ac767805c",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/15183fb104d1b893aea35cf50af8ae5ac767805c"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "15183fb104d1b893aea35cf50af8ae5ac767805c",
  #       "node_id": "C_kwDOGnncn9oAKDE1MTgzZmIxMDRkMWI4OTNhZWEzNWNmNTBhZjhhZTVhYzc2NzgwNWM",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-10T15:39:16Z"
  #         },
  #         "committer": {
  #           "name": "Wade Naughton",
  #           "email": "wadenaughton@gmail.com",
  #           "date": "2022-01-10T15:39:16Z"
  #         },
  #         "message": "new merchant form created",
  #         "tree": {
  #           "sha": "b5b899ed29ed8a77d2bd166cccf47e6625ef8ac4",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/b5b899ed29ed8a77d2bd166cccf47e6625ef8ac4"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/15183fb104d1b893aea35cf50af8ae5ac767805c",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/15183fb104d1b893aea35cf50af8ae5ac767805c",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/15183fb104d1b893aea35cf50af8ae5ac767805c",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/15183fb104d1b893aea35cf50af8ae5ac767805c/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "f5e587b8a7af637d9e4a5d251eac8885d624a5f9",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/f5e587b8a7af637d9e4a5d251eac8885d624a5f9",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/f5e587b8a7af637d9e4a5d251eac8885d624a5f9"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "a001a7bf89ee7a39e392755ed94b4378375a04c9",
  #       "node_id": "C_kwDOGnncn9oAKGEwMDFhN2JmODllZTdhMzllMzkyNzU1ZWQ5NGI0Mzc4Mzc1YTA0Yzk",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T04:16:54Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T04:16:54Z"
  #         },
  #         "message": "Test: add ::order_created_at and ::order_created_at tests",
  #         "tree": {
  #           "sha": "950c702f383b010db4dcbf37a0931db4955a2b07",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/950c702f383b010db4dcbf37a0931db4955a2b07"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/a001a7bf89ee7a39e392755ed94b4378375a04c9",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a001a7bf89ee7a39e392755ed94b4378375a04c9",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a001a7bf89ee7a39e392755ed94b4378375a04c9",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a001a7bf89ee7a39e392755ed94b4378375a04c9/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "d0f81a58b181bc591485e048c92bac13d9b6381a",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d0f81a58b181bc591485e048c92bac13d9b6381a",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d0f81a58b181bc591485e048c92bac13d9b6381a"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "d0f81a58b181bc591485e048c92bac13d9b6381a",
  #       "node_id": "C_kwDOGnncn9oAKGQwZjgxYTU4YjE4MWJjNTkxNDg1ZTA0OGM5MmJhYzEzZDliNjM4MWE",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T04:16:25Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T04:16:25Z"
  #         },
  #         "message": "Feat: add ::created_at_formatted and ::order_created_at",
  #         "tree": {
  #           "sha": "50c4fbe188028a021b8ded037bdfc481fbca6940",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/50c4fbe188028a021b8ded037bdfc481fbca6940"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/d0f81a58b181bc591485e048c92bac13d9b6381a",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d0f81a58b181bc591485e048c92bac13d9b6381a",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/d0f81a58b181bc591485e048c92bac13d9b6381a",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/d0f81a58b181bc591485e048c92bac13d9b6381a/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "97a861638be02cb260aaccbf036c0ff61961cee0",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/97a861638be02cb260aaccbf036c0ff61961cee0",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/97a861638be02cb260aaccbf036c0ff61961cee0"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "97a861638be02cb260aaccbf036c0ff61961cee0",
  #       "node_id": "C_kwDOGnncn9oAKDk3YTg2MTYzOGJlMDJjYjI2MGFhY2NiZjAzNmMwZmY2MTk2MWNlZTA",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T03:57:03Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T03:57:03Z"
  #         },
  #         "message": "Feat: add ::order_created_at",
  #         "tree": {
  #           "sha": "6fbacc0c83ecbd303517d486020528184404ab4c",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/6fbacc0c83ecbd303517d486020528184404ab4c"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/97a861638be02cb260aaccbf036c0ff61961cee0",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/97a861638be02cb260aaccbf036c0ff61961cee0",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/97a861638be02cb260aaccbf036c0ff61961cee0",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/97a861638be02cb260aaccbf036c0ff61961cee0/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04",
  #       "node_id": "C_kwDOGnncn9oAKDM0ZDcwZTJkNWQxYjI3YTBkNGM2MTY1M2E5OGNiYmM1NmY2YWZjMDQ",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T03:56:25Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T03:56:25Z"
  #         },
  #         "message": "Test: add ::order_created_at test",
  #         "tree": {
  #           "sha": "3dc2e7f387ba27bac8528b3c7606d5febd7b4adc",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/3dc2e7f387ba27bac8528b3c7606d5febd7b4adc"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/34d70e2d5d1b27a0d4c61653a98cbbc56f6afc04/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #       "node_id": "C_kwDOGnncn9oAKDZhNmE5YTU2YTdmYTI1YTdjZTNjNDFjNGU0ZjcwNTdmYjI1YzczYzM",
  #       "commit": {
  #         "author": {
  #           "name": "Wade Naughton",
  #           "email": "90228086+WadeNaughton@users.noreply.github.com",
  #           "date": "2022-01-10T03:30:33Z"
  #         },
  #         "committer": {
  #           "name": "GitHub",
  #           "email": "noreply@github.com",
  #           "date": "2022-01-10T03:30:33Z"
  #         },
  #         "message": "Merge pull request #70 from tjroeder/issue_#19\n\nResolves #19",
  #         "tree": {
  #           "sha": "5afee1db5220a418c97ab2d5b2caef3ae2f59337",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/5afee1db5220a418c97ab2d5b2caef3ae2f59337"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": true,
  #           "reason": "valid",
  #           "signature": "-----BEGIN PGP SIGNATURE-----\n\nwsBcBAABCAAQBQJh26hZCRBK7hj4Ov3rIwAAEtcIAGNZCE2oEuI2lRATe6ykt6c1\nrxcdNWB8BYS3Bpwr4iw2p1O3xQMEJbY/6pd+XDZ2wof/e77Y+jswrKwaRUcB4sl+\nCP0t9IXH4N3zXmaDaK68QLWm/X0QoDz4IebOAqXZZxQaZeFyzLKBIQ8LsESzja6C\n3/4ZKXfWSBEKh1qqDTij35GwEbubx44q1HIFiiqwWHH8xvpiuY3itJBX2cWYUHgg\nVktaMZVVLBChBQBA6jlRbLqt4lGjNZHPRb/k0JYLdHxzMz4lbMyDgaI0u3Xq/Kc+\nPekhP6EtZImwlKEo5mccz2ew2Oh+x58o4Wcl8Kwj0zoIEPEJ51TFzoYLGHPuwzY=\n=Uf9+\n-----END PGP SIGNATURE-----\n",
  #           "payload": "tree 5afee1db5220a418c97ab2d5b2caef3ae2f59337\nparent 695b9645292a4eb88935277901a1a13806ad6f2d\nparent a2e83487370ea7ef09a6e4e231fefbef0ff05d94\nauthor Wade Naughton <90228086+WadeNaughton@users.noreply.github.com> 1641785433 -0500\ncommitter GitHub <noreply@github.com> 1641785433 -0500\n\nMerge pull request #70 from tjroeder/issue_#19\n\nResolves #19"
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6a6a9a56a7fa25a7ce3c41c4e4f7057fb25c73c3/comments",
  #       "author": {
  #         "login": "WadeNaughton",
  #         "id": 90228086,
  #         "node_id": "MDQ6VXNlcjkwMjI4MDg2",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/90228086?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/WadeNaughton",
  #         "html_url": "https://github.com/WadeNaughton",
  #         "followers_url": "https://api.github.com/users/WadeNaughton/followers",
  #         "following_url": "https://api.github.com/users/WadeNaughton/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/WadeNaughton/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/WadeNaughton/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/WadeNaughton/subscriptions",
  #         "organizations_url": "https://api.github.com/users/WadeNaughton/orgs",
  #         "repos_url": "https://api.github.com/users/WadeNaughton/repos",
  #         "events_url": "https://api.github.com/users/WadeNaughton/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/WadeNaughton/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "web-flow",
  #         "id": 19864447,
  #         "node_id": "MDQ6VXNlcjE5ODY0NDQ3",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/19864447?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/web-flow",
  #         "html_url": "https://github.com/web-flow",
  #         "followers_url": "https://api.github.com/users/web-flow/followers",
  #         "following_url": "https://api.github.com/users/web-flow/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/web-flow/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/web-flow/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/web-flow/subscriptions",
  #         "organizations_url": "https://api.github.com/users/web-flow/orgs",
  #         "repos_url": "https://api.github.com/users/web-flow/repos",
  #         "events_url": "https://api.github.com/users/web-flow/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/web-flow/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "695b9645292a4eb88935277901a1a13806ad6f2d",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/695b9645292a4eb88935277901a1a13806ad6f2d",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/695b9645292a4eb88935277901a1a13806ad6f2d"
  #         },
  #         {
  #           "sha": "a2e83487370ea7ef09a6e4e231fefbef0ff05d94",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a2e83487370ea7ef09a6e4e231fefbef0ff05d94",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a2e83487370ea7ef09a6e4e231fefbef0ff05d94"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "a2e83487370ea7ef09a6e4e231fefbef0ff05d94",
  #       "node_id": "C_kwDOGnncn9oAKGEyZTgzNDg3MzcwZWE3ZWYwOWE2ZTRlMjMxZmVmYmVmMGZmMDVkOTQ",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:47:43Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:47:43Z"
  #         },
  #         "message": "Feat: add incomplete invoices list and links to show pages",
  #         "tree": {
  #           "sha": "5afee1db5220a418c97ab2d5b2caef3ae2f59337",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/5afee1db5220a418c97ab2d5b2caef3ae2f59337"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/a2e83487370ea7ef09a6e4e231fefbef0ff05d94",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a2e83487370ea7ef09a6e4e231fefbef0ff05d94",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/a2e83487370ea7ef09a6e4e231fefbef0ff05d94",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/a2e83487370ea7ef09a6e4e231fefbef0ff05d94/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "ab358d4ed815757749f88eb0e4e938808c9073ce",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/ab358d4ed815757749f88eb0e4e938808c9073ce",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/ab358d4ed815757749f88eb0e4e938808c9073ce"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "ab358d4ed815757749f88eb0e4e938808c9073ce",
  #       "node_id": "C_kwDOGnncn9oAKGFiMzU4ZDRlZDgxNTc1Nzc0OWY4OGViMGU0ZTkzODgwOGM5MDczY2U",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:47:18Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:47:18Z"
  #         },
  #         "message": "Test: add incomplete invoices list and links to show pages",
  #         "tree": {
  #           "sha": "5f40edabaa831aebcfb1d346d382205fd1891b5a",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/5f40edabaa831aebcfb1d346d382205fd1891b5a"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/ab358d4ed815757749f88eb0e4e938808c9073ce",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/ab358d4ed815757749f88eb0e4e938808c9073ce",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/ab358d4ed815757749f88eb0e4e938808c9073ce",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/ab358d4ed815757749f88eb0e4e938808c9073ce/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "78689cf506e584b9a1037f669d4851d911ca3c71",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/78689cf506e584b9a1037f669d4851d911ca3c71",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/78689cf506e584b9a1037f669d4851d911ca3c71"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "78689cf506e584b9a1037f669d4851d911ca3c71",
  #       "node_id": "C_kwDOGnncn9oAKDc4Njg5Y2Y1MDZlNTg0YjlhMTAzN2Y2NjlkNDg1MWQ5MTFjYTNjNzE",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:46:36Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:46:36Z"
  #         },
  #         "message": "Feat: add #show action to invoices resources",
  #         "tree": {
  #           "sha": "99a34e8e7ba8bf5123f16592553244863f42b0f4",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/99a34e8e7ba8bf5123f16592553244863f42b0f4"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/78689cf506e584b9a1037f669d4851d911ca3c71",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/78689cf506e584b9a1037f669d4851d911ca3c71",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/78689cf506e584b9a1037f669d4851d911ca3c71",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/78689cf506e584b9a1037f669d4851d911ca3c71/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "9224bc0ae4001017ed0d3814d34c774bb4c1a3f3",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9224bc0ae4001017ed0d3814d34c774bb4c1a3f3",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9224bc0ae4001017ed0d3814d34c774bb4c1a3f3"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "9224bc0ae4001017ed0d3814d34c774bb4c1a3f3",
  #       "node_id": "C_kwDOGnncn9oAKDkyMjRiYzBhZTQwMDEwMTdlZDBkMzgxNGQzNGM3NzRiYjRjMWEzZjM",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:45:59Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:45:59Z"
  #         },
  #         "message": "Feat: add @invoices to #index action",
  #         "tree": {
  #           "sha": "5f60e0a129325f18dead2537faacf4f3c4248566",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/5f60e0a129325f18dead2537faacf4f3c4248566"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/9224bc0ae4001017ed0d3814d34c774bb4c1a3f3",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9224bc0ae4001017ed0d3814d34c774bb4c1a3f3",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/9224bc0ae4001017ed0d3814d34c774bb4c1a3f3",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/9224bc0ae4001017ed0d3814d34c774bb4c1a3f3/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "20cadc028b5c761be7a562afeace063b82d532ac",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/20cadc028b5c761be7a562afeace063b82d532ac",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/20cadc028b5c761be7a562afeace063b82d532ac"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "20cadc028b5c761be7a562afeace063b82d532ac",
  #       "node_id": "C_kwDOGnncn9oAKDIwY2FkYzAyOGI1Yzc2MWJlN2E1NjJhZmVhY2UwNjNiODJkNTMyYWM",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:45:19Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:45:19Z"
  #         },
  #         "message": "Feat: add #show and #invoice_params actions",
  #         "tree": {
  #           "sha": "fbac7867cc3222c25d0df0042d221f95e8eefabb",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/fbac7867cc3222c25d0df0042d221f95e8eefabb"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/20cadc028b5c761be7a562afeace063b82d532ac",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/20cadc028b5c761be7a562afeace063b82d532ac",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/20cadc028b5c761be7a562afeace063b82d532ac",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/20cadc028b5c761be7a562afeace063b82d532ac/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "26417cd094b12cc774bf54e5df3527476acad86d",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/26417cd094b12cc774bf54e5df3527476acad86d",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/26417cd094b12cc774bf54e5df3527476acad86d"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "26417cd094b12cc774bf54e5df3527476acad86d",
  #       "node_id": "C_kwDOGnncn9oAKDI2NDE3Y2QwOTRiMTJjYzc3NGJmNTRlNWRmMzUyNzQ3NmFjYWQ4NmQ",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:44:42Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:44:42Z"
  #         },
  #         "message": "Feat: add invoice show page",
  #         "tree": {
  #           "sha": "ca6d7b6861a14502832bf3e43262334ba11c96ad",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/ca6d7b6861a14502832bf3e43262334ba11c96ad"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/26417cd094b12cc774bf54e5df3527476acad86d",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/26417cd094b12cc774bf54e5df3527476acad86d",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/26417cd094b12cc774bf54e5df3527476acad86d",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/26417cd094b12cc774bf54e5df3527476acad86d/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "6ad5387ee76312760b391325cb9e60b941d14bd3",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6ad5387ee76312760b391325cb9e60b941d14bd3",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/6ad5387ee76312760b391325cb9e60b941d14bd3"
  #         }
  #       ]
  #     },
  #     {
  #       "sha": "6ad5387ee76312760b391325cb9e60b941d14bd3",
  #       "node_id": "C_kwDOGnncn9oAKDZhZDUzODdlZTc2MzEyNzYwYjM5MTMyNWNiOWU2MGI5NDFkMTRiZDM",
  #       "commit": {
  #         "author": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:03:47Z"
  #         },
  #         "committer": {
  #           "name": "Tim Roeder",
  #           "email": "timothyjroeder@gmail.com",
  #           "date": "2022-01-10T01:03:47Z"
  #         },
  #         "message": "Feat: add ::incomplete_list",
  #         "tree": {
  #           "sha": "66e7927c07f3bd2b775098adbabfe867aa634127",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/trees/66e7927c07f3bd2b775098adbabfe867aa634127"
  #         },
  #         "url": "https://api.github.com/repos/tjroeder/little-esty-shop/git/commits/6ad5387ee76312760b391325cb9e60b941d14bd3",
  #         "comment_count": 0,
  #         "verification": {
  #           "verified": false,
  #           "reason": "unsigned",
  #           "signature": null,
  #           "payload": null
  #         }
  #       },
  #       "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6ad5387ee76312760b391325cb9e60b941d14bd3",
  #       "html_url": "https://github.com/tjroeder/little-esty-shop/commit/6ad5387ee76312760b391325cb9e60b941d14bd3",
  #       "comments_url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/6ad5387ee76312760b391325cb9e60b941d14bd3/comments",
  #       "author": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "committer": {
  #         "login": "tjroeder",
  #         "id": 78194232,
  #         "node_id": "MDQ6VXNlcjc4MTk0MjMy",
  #         "avatar_url": "https://avatars.githubusercontent.com/u/78194232?v=4",
  #         "gravatar_id": "",
  #         "url": "https://api.github.com/users/tjroeder",
  #         "html_url": "https://github.com/tjroeder",
  #         "followers_url": "https://api.github.com/users/tjroeder/followers",
  #         "following_url": "https://api.github.com/users/tjroeder/following{/other_user}",
  #         "gists_url": "https://api.github.com/users/tjroeder/gists{/gist_id}",
  #         "starred_url": "https://api.github.com/users/tjroeder/starred{/owner}{/repo}",
  #         "subscriptions_url": "https://api.github.com/users/tjroeder/subscriptions",
  #         "organizations_url": "https://api.github.com/users/tjroeder/orgs",
  #         "repos_url": "https://api.github.com/users/tjroeder/repos",
  #         "events_url": "https://api.github.com/users/tjroeder/events{/privacy}",
  #         "received_events_url": "https://api.github.com/users/tjroeder/received_events",
  #         "type": "User",
  #         "site_admin": false
  #       },
  #       "parents": [
  #         {
  #           "sha": "8e8251b7b65fda61e49da428d584a79f98770056",
  #           "url": "https://api.github.com/repos/tjroeder/little-esty-shop/commits/8e8251b7b65fda61e49da428d584a79f98770056",
  #           "html_url": "https://github.com/tjroeder/little-esty-shop/commit/8e8251b7b65fda61e49da428d584a79f98770056"
  #         }
  #       ]
  #     }
  #   ]', headers: {})

  #   stub_request(:get, "https://api.github.com/repos/tjroeder/little-esty-shop/contributors").
  #   with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
  #   to_return(status: 200, body: '[{"login":"tjroeder","id":78194232,"node_id":"MDQ6VXNlcjc4MTk0MjMy","avatar_url":"https://avatars.githubusercontent.com/u/78194232?v=4","gravatar_id":"","url":"https://api.github.com/users/tjroeder","html_url":"https://github.com/tjroeder","followers_url":"https://api.github.com/users/tjroeder/followers","following_url":"https://api.github.com/users/tjroeder/following{/other_user}","gists_url":"https://api.github.com/users/tjroeder/gists{/gist_id}","starred_url":"https://api.github.com/users/tjroeder/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/tjroeder/subscriptions","organizations_url":"https://api.github.com/users/tjroeder/orgs","repos_url":"https://api.github.com/users/tjroeder/repos","events_url":"https://api.github.com/users/tjroeder/events{/privacy}","received_events_url":"https://api.github.com/users/tjroeder/received_events","type":"User","site_admin":false,"contributions":121}]', headers: {})
  # end

  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end
  
  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will
  # have no way to turn it off -- the option exists only for backwards
  # compatibility in RSpec 3). It causes shared context metadata to be
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
  config.shared_context_metadata_behavior = :apply_to_host_groups
  
# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.
=begin
# This allows you to limit a spec run to individual examples or groups
# you care about by tagging them with `:focus` metadata. When nothing
# is tagged with `:focus`, all examples get run. RSpec also provides
# aliases for `it`, `describe`, and `context` that include `:focus`
# metadata: `fit`, `fdescribe` and `fcontext`, respectively.
config.filter_run_when_matching :focus

# Allows RSpec to persist some state between runs in order to support
# the `--only-failures` and `--next-failure` CLI options. We recommend
# you configure your source control system to ignore this file.
config.example_status_persistence_file_path = "spec/examples.txt"

# Limits the available syntax to the non-monkey patched syntax that is
# recommended. For more details, see:
#   - http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
#   - http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/
#   - http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#zero-monkey-patching-mode
config.disable_monkey_patching!

# Many RSpec users commonly either run the entire suite or an individual
# file, and it's useful to allow more verbose output when running an
# individual spec file.
if config.files_to_run.one?
  # Use the documentation formatter for detailed output,
  # unless a formatter has already been configured
  # (e.g. via a command-line flag).
  config.default_formatter = "doc"
end

# Print the 10 slowest examples and example groups at the
# end of the spec run, to help surface which specs are running
# particularly slow.
config.profile_examples = 10

# Run specs in random order to surface order dependencies. If you find an
# order dependency and want to debug it, you can fix the order by providing
# the seed, which is printed after each run.
#     --seed 1234
config.order = :random

# Seed global randomization in this process using the `--seed` CLI option.
# Setting this allows you to use `--seed` to deterministically reproduce
# test failures related to randomization by passing the same `--seed` value
# as the one that triggered the failure.
Kernel.srand config.seed
=end
end
  