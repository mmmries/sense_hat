defmodule SenseHatTest do
  use ExUnit.Case
  doctest SenseHat

  test "greets the world" do
    assert SenseHat.hello() == :world
  end
end
