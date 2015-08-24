window.App = angular.module('Ikadb', ['ngResource', 'ui.bootstrap']).run([
  '$window', ($window) ->

    # 外部リンククリック時にGoogleAnalyticsにイベントを送信
    $("a.external").on("click", (event) ->
      _gaq.push([
        "_trackEvent",
        "external_link",
        event.currentTarget.href,
        "",
        1,
        false
      ])
    )
])

# Ajax送信時にトークンを送信する（トークンがないとRails側で認証エラーになる）
App.config ["$httpProvider", ($httpProvider) ->
  if document.getElementsByName("csrf-token")[0]
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
      document.getElementsByName("csrf-token")[0].content
]
