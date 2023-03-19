defmodule NavigationWeb.PageControllerTest do
  use NavigationWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Home"
    assert html_response(conn, 200) =~ "About"
    assert html_response(conn, 200) =~ "Projects"
  end
end
