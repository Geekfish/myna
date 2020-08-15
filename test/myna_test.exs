defmodule MynaTest do
  use ExUnit.Case
  doctest Myna

  test "greets the world" do
    assert Myna.hello() == :world
  end
end
