defmodule Geometry do
  def rect_area(a, b) do
    a * b
  end

  def short_func, do: "Hello"

  @spec default_val(a) :: number
  def default_val(a \\ 0) do
    :an_atom
    :alsoanAtom
    # alias :"Elixir.AnAtom"
    AnAtom
    varfunc = private_func()
    # lets hope now it is number
    varfunc + a
  end

  defp private_func, do: " i am so private"

  def alter_tuple_elem do
    tupled_set = {"string", 5}
    # what if out of range index ? ? 
    elem(tupled_set, 1)
    # modify the elem, although the data are immutable, 
    # they tranfered to another memory location
    # and the old one is candidate for the grabage collector
    modified_tuple = put_elem(tupled_set, 1, 99)
  end
end
