defmodule SandboxWeb.ComponentLive do
  use Phoenix.LiveComponent

  alias SandboxWeb.PageView

  def render(assigns), do: Phoenix.View.render(PageView, "component.html", assigns)

  def mount(socket), do: {:ok, socket}

  def update(assigns, socket), do: {:ok, assign(socket, Map.merge(socket.assigns, assigns))}
end
