`import Ember from 'ember'`

PullRequestsRoute = Ember.Route.extend
  model: ->
    Ember.$.ajax 'https://api.github.com/repos/mini-thor/github_pull_request_viewer/pulls', {
      'type': 'GET',
      'dataType': 'JSON',
      'success': (data, textStatus, jqXHR) ->
        console.log(data)
        console.log(textStatus)
        console.log(jqXHR)
    }

`export default PullRequestsRoute`
