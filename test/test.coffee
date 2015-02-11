ActionBar = require "../template"

describe "Action Bar", ->
  it "should hold a bunch of actions", ->
    actionData = [{
      perform: ->
        alert "heyy"
      name: "Test"
    }]

    actions =
      each: (fn) ->
        actionData.forEach (action) ->
          fn.call(action, action)

    actionBar = ActionBar
      actions: actions

    document.body.appendChild actionBar
