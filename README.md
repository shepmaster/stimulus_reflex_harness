# Steps

1. Start the server
1. Open one window, click the `test` button a few times
1. Open another window, click the `test` button a few times

Possible outcomes:

- Both windows share the same thread and counter. Manifests here by
  resetting the counter of the first window when the second window is
  opened and then sharing the same value afterwards.

- The thread servicing the WebSocket request changes after the
  connection is established. Manifests here as ``undefined method `+'
  for nil:NilClass``. May be easiest to see by adding a sleep into the
  view and then clicking the `test` button in both windows.

## StimulusReflex test harness app

Purpose: Verify a bare-bones SR application. Branch it to build MCVEs.

Prerequisites: Postgres and Redis

To install: `bundle install && yarn install && rake db:setup && rake db:migrate`

Optional: `bin/webpack-dev-server`

To run: `rails s`

I realize that it might seem odd to have a repo intended for MCVEs to have no testing infrastructure set up. As a not-experienced programmatic tester, it seems like I'm the wrong person to tell you how to test what you want to test.
