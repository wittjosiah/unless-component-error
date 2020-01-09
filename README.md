The following code in a Phoenix live template (generally an unless statement wrapped around a live component)

```
<%= unless false do %>
  <%= live_component @socket, SandboxWeb.ComponentLive, id: "component" %>
<% end %>
```

causes the following error

```
** (exit) an exception was raised:
    ** (ArgumentError) cannot convert component SandboxWeb.ComponentLive with id "component" to HTML. A component must always be returned directly as part of a LiveView template
        (phoenix_live_view) lib/phoenix_live_view/engine.ex:20: Phoenix.HTML.Safe.Phoenix.LiveView.Component.to_iodata/1
        (sandbox) lib/sandbox_web/templates/page/live.html.leex:2: SandboxWeb.PageView."live.html"/1
        (phoenix_live_view) lib/phoenix_live_view/utils.ex:70: Phoenix.LiveView.Utils.to_rendered/2
        (phoenix_live_view) lib/phoenix_live_view/static.ex:213: Phoenix.LiveView.Static.to_rendered_content_tag/4
        (phoenix_live_view) lib/phoenix_live_view/static.ex:100: Phoenix.LiveView.Static.render/3
        (phoenix_live_view) lib/phoenix_live_view/controller.ex:34: Phoenix.LiveView.Controller.live_render/3
        (phoenix) lib/phoenix/router.ex:288: Phoenix.Router.__call__/2
        (sandbox) lib/sandbox_web/endpoint.ex:1: SandboxWeb.Endpoint.plug_builder_call/2
        (sandbox) lib/plug/debugger.ex:122: SandboxWeb.Endpoint."call (overridable 3)"/2
        (sandbox) lib/sandbox_web/endpoint.ex:1: SandboxWeb.Endpoint.call/2
        (phoenix) lib/phoenix/endpoint/cowboy2_handler.ex:42: Phoenix.Endpoint.Cowboy2Handler.init/4
        (cowboy) /Users/josiahwitt/projects/sandbox/deps/cowboy/src/cowboy_handler.erl:41: :cowboy_handler.execute/2
        (cowboy) /Users/josiahwitt/projects/sandbox/deps/cowboy/src/cowboy_stream_h.erl:320: :cowboy_stream_h.execute/3
        (cowboy) /Users/josiahwitt/projects/sandbox/deps/cowboy/src/cowboy_stream_h.erl:302: :cowboy_stream_h.request_process/3
        (stdlib) proc_lib.erl:249: :proc_lib.init_p_do_apply/3

```

This seems unexpected
