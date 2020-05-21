defmodule InsertionSort do
  def execute(list, sorted_list)  do
    if list != [] do
        sorted_list = order_list(sorted_list, hd(list), 0)
        execute(tl(list), sorted_list)
    else
      IO.inspect(sorted_list, label: "The sorted list is")
    end
  end

  defp order_list(list_to_sort, new_element, pointer) do
    if list_to_sort == [] || Enum.at(list_to_sort, pointer) > new_element do
      List.insert_at(list_to_sort, pointer, new_element)
    else
      pointer = pointer + 1
      order_list(list_to_sort, new_element, pointer)
    end
  end
end
