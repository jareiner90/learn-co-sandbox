vending_machine = [[[{:name=>"Vanilla Cookies", :price=>3},
   {:name=>"Pistachio Cookies", :price=>3},
   {:name=>"Chocolate Cookies", :price=>3},
   {:name=>"Chocolate Chip Cookies", :price=>3}],
  [{:name=>"Tooth-Melters", :price=>12},
   {:name=>"Tooth-Destroyers", :price=>12},
   {:name=>"Enamel Eaters", :price=>12},
   {:name=>"Dentist's Nightmare", :price=>20}],
  [{:name=>"Gummy Sour Apple", :price=>3},
   {:name=>"Gummy Apple", :price=>5},
   {:name=>"Gummy Moldy Apple", :price=>1}]],
 [[{:name=>"Grape Drink", :price=>1},
   {:name=>"Orange Drink", :price=>1},
   {:name=>"Pineapple Drink", :price=>1}],
  [{:name=>"Mints", :price=>13},
   {:name=>"Curiously Toxic Mints", :price=>1000},
   {:name=>"US Mints", :price=>99}]]]


def add_it_up(nds)
  new_array = []
  count_1 = 0 
  while count_1 < nds.length do 
    count_2 = 0 
    while count_2 < nds[count_1].length do 
      count_3 = 0 
      while count_3 < nds[count_1][count_2].length do 
        x = nds[count_1][count_2][count_3][:price]
        new_array << x
        count_3 += 1
      end 
      count_2 += 1
    end 
    count_1 += 1
  end 
  new_array
end 

test_array = add_it_up(vending_machine)

pp test_array.reduce { |x, i| x + i }




