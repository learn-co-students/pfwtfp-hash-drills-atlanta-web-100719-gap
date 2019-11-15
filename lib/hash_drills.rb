def shopping_list
{
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]},
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
end

# Write methods and implementation here based on README instructions and tests
#THEY WANT 3 METHODS

def vegetarian_ingredients
    vegetarian_list = shopping_list
    vegetarian_list[:protein].delete(:meat)
    vegetarian_list[:protein][:other].shift
    vegetarian_list
end
    # vegetarian_ingredients = Hash.new
    # vegetarian_ingredients]
    #  shopping_list.delete([:protein][0])
    # shopping_list.delete_if{|k,v| k == :protein v == :meat }
    # shopping_list.select { |(k, v)| v.delete(k) if v == :meat }
    #shopping_list.reject {|k,v| v != :meat}
  
  
def ketogenic_ingredients 
    ketogenic_ingredients = shopping_list
    ketogenic_ingredients.delete(:sweets)
    ketogenic_ingredients.delete(:fruits)
    ketogenic_ingredients.delete(:grains)
    ketogenic_ingredients[:dairy].delete("milk")
    ketogenic_ingredients[:dairy].delete("yogurt")
    ketogenic_ingredients
end 


def mediterranean_ingredients 
    #only include chicken, fish, nuts, yogurt, cheese, fruits, vegetables, and grains.
    mediterranean_ingredients = shopping_list
    mediterranean_ingredients[:protein][:meat].delete("steak")
    mediterranean_ingredients[:protein][:other].delete("beans")
    mediterranean_ingredients[:protein][:other].delete("eggs")
    mediterranean_ingredients[:dairy].delete("milk")
    mediterranean_ingredients.delete(:sweets)
    mediterranean_ingredients
end 
  
def vegan_ingredients
vegan_ingredients = vegetarian_ingredients
vegan_ingredients.delete(:dairy)
vegan_ingredients
end

def remove_allergens(ranhash)
    remove_allergens = ranhash 
    remove_allergens[:protein][:other].delete("nuts")
    remove_allergens
end 