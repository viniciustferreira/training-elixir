defmodule MergeSort do
  def execute(list, sorting, list_size) do
    if sorting == true do
      if length(list) == list_size do
        IO.inspect(list , label: "The sorted list is")
      else
        IO.inspect(list , label: "The pre-sorted list is")
      end
    else
      if length(list) > 2  do
        size = calc_length(list)
        new_list1 = Enum.take(list, size)
        new_list2 = Enum.drop(list, size)
        execute(sort(Enum.concat(execute(new_list1, false, list_size), execute(new_list2, false, list_size)), 0), true, list_size)
      else
        sort(list, 0)
      end
    end
  end

  def calc_length(list) do
    if length(list)/2 == 0 do
      round(length(list)/2)
    else
      round(length(list)/2) - 1
    end
  end

  def sort(list, index) do
    if index < length(list) do
      if Enum.at(list, index) > Enum.at(list, index + 1) do
        aux = Enum.at(list, index)
        list = List.replace_at(list, index, Enum.at(list, index + 1))
        list = List.replace_at(list, index + 1, aux)
        sort(list, 0)
      else
        index = index + 1
        sort(list, index)
      end
    else
      list
    end
  end
end
