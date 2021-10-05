require 'rspec'
require 'test'

describe "SQL" do

  describe "gold_cat_toys" do
    it "finds all the toys that are `Gold` in color and have more than one word in the name" do
      expect(gold_cat_toys).to eq([["Bone Club"], ["Bubble Beam"], ["Chicken Milanese"], ["Chicken Wings"], ["Chilli con Carne"], ["Defense Curl"], ["Ebiten maki"], ["Ebiten maki"], ["Expecto Patronum"], ["Fettuccine Alfredo"], ["Fire Punch"], ["French Toast"], ["Fury Attack"], ["Ice Beam"], ["Ice Punch"], ["Jump Kick"], ["Leech Seed"], ["Leech Seed"], ["Low Kick"], ["Massaman Curry"], ["Pappardelle alla Bolognese"], ["Pasta Carbonara"], ["Pork Sausage Roll"], ["Quick Attack"], ["Risotto with Seafood"], ["Rolling Kick"], ["Scotch Eggs"], ["Seafood Paella"], ["Shadow Isles"], ["Solar Beam"], ["Solar Beam"], ["Solar Beam"], ["Som Tam"], ["Som Tam"], ["Stormraiders Surge"], ["Tuna Sashimi"], ["Vegetable Soup"], ["Vegetable Soup"]])
    end
  end

  describe "extra_jet_toys" do
    it "shows which toys `Jet` has that have the same name and how many" do
      expect(extra_jet_toys).to eq([["Chicken Milanese", "3"], ["Kebab", "4"], ["Massaman Curry", "2"], ["Odio", "2"], ["Peking Duck", "2"], ["Quibusdam", "2"], ["Rerum", "2"], ["Tempora", "2"], ["Tiramisù", "6"]])
    end
  end

  describe "cats_with_a_lot" do
    it "finds the names of all cats with more than seven toys" do
      expect(cats_with_a_lot).to eq([["Beatrice"], ["Calvin"], ["Chad"], ["Edmundo"], ["Forrest"], ["Freyja"], ["Garth"], ["Glendora"], ["Horace"], ["Jess"], ["Jet"], ["Junie"], ["Kiersten"], ["Latanya"], ["Lou"], ["Man"], ["Marcos"], ["Merissa"], ["Millicent"], ["Morgan"], ["Olevia"], ["Oralee"], ["Ozzie"], ["Pedro"], ["Peg"], ["Rene"], ["Roberto"], ["Shelton"], ["Shon"], ["Theo"], ["Valentin"], ["Vinita"]])
    end
  end
  
  describe "just_like_orange" do
    it "lists all the cats of `Orange`'s breed excluding `Orange` the cat" do
      expect(just_like_orange).to eq([
        ["Abdul", "Brazilian Shorthair"],
        ["Ai", "Brazilian Shorthair"],
        ["Aida", "Brazilian Shorthair"],
        ["Alejandra", "Brazilian Shorthair"],
        ["Allen", "Brazilian Shorthair"],
        ["Alvin", "Brazilian Shorthair"],
        ["Andrea", "Brazilian Shorthair"],
        ["Angie", "Brazilian Shorthair"],
        ["Anna", "Brazilian Shorthair"],
        ["Aracely", "Brazilian Shorthair"],
        ["Arden", "Brazilian Shorthair"],
        ["Arlinda", "Brazilian Shorthair"],
        ["Arron", "Brazilian Shorthair"],
        ["Arthur", "Brazilian Shorthair"],
        ["Ayana", "Brazilian Shorthair"],
        ["Beaulah", "Brazilian Shorthair"],
        ["Bobette", "Brazilian Shorthair"],
        ["Bonita", "Brazilian Shorthair"],
        ["Brianna", "Brazilian Shorthair"],
        ["Bud", "Brazilian Shorthair"],
        ["Candy", "Brazilian Shorthair"],
        ["Cary", "Brazilian Shorthair"],
        ["Chantel", "Brazilian Shorthair"],
        ["Charles", "Brazilian Shorthair"],
        ["Cheri", "Brazilian Shorthair"],
        ["Cherie", "Brazilian Shorthair"],
        ["Chuck", "Brazilian Shorthair"],
        ["Coleen", "Brazilian Shorthair"],
        ["Cori", "Brazilian Shorthair"],
        ["Cruz", "Brazilian Shorthair"],
        ["Dallas", "Brazilian Shorthair"],
        ["Damian", "Brazilian Shorthair"],
        ["Damon", "Brazilian Shorthair"],
        ["Daysi", "Brazilian Shorthair"],
        ["Deena", "Brazilian Shorthair"],
        ["Denyse", "Brazilian Shorthair"],
        ["Dominick", "Brazilian Shorthair"],
        ["Donnie", "Brazilian Shorthair"],
        ["Donny", "Brazilian Shorthair"],
        ["Ed", "Brazilian Shorthair"],
        ["Edgar", "Brazilian Shorthair"],
        ["Edith", "Brazilian Shorthair"],
        ["Edmundo", "Brazilian Shorthair"],
        ["Elia", "Brazilian Shorthair"],
        ["Elijah", "Brazilian Shorthair"],
        ["Estrella", "Brazilian Shorthair"],
        ["Ethan", "Brazilian Shorthair"],
        ["Freeman", "Brazilian Shorthair"],
        ["Giuseppe", "Brazilian Shorthair"],
        ["Glenda", "Brazilian Shorthair"],
        ["Harry", "Brazilian Shorthair"],
        ["Hilde", "Brazilian Shorthair"],
        ["Hollie", "Brazilian Shorthair"],
        ["Hosea", "Brazilian Shorthair"],
        ["Idell", "Brazilian Shorthair"],
        ["In", "Brazilian Shorthair"],
        ["Ione", "Brazilian Shorthair"],
        ["Jani", "Brazilian Shorthair"],
        ["Jannet", "Brazilian Shorthair"],
        ["Jerome", "Brazilian Shorthair"],
        ["Jesus", "Brazilian Shorthair"],
        ["Josef", "Brazilian Shorthair"],
        ["Katlyn", "Brazilian Shorthair"],
        ["Kendall", "Brazilian Shorthair"],
        ["Kenia", "Brazilian Shorthair"],
        ["Khadijah", "Brazilian Shorthair"],
        ["Kimbery", "Brazilian Shorthair"],
        ["Kum", "Brazilian Shorthair"],
        ["Laurena", "Brazilian Shorthair"],
        ["Leisa", "Brazilian Shorthair"],
        ["Lincoln", "Brazilian Shorthair"],
        ["Liz", "Brazilian Shorthair"],
        ["Lore", "Brazilian Shorthair"],
        ["Luann", "Brazilian Shorthair"],
        ["Lucas", "Brazilian Shorthair"],
        ["Luciano", "Brazilian Shorthair"],
        ["Lucretia", "Brazilian Shorthair"],
        ["Lyle", "Brazilian Shorthair"],
        ["Lyndsey", "Brazilian Shorthair"],
        ["Magaret", "Brazilian Shorthair"],
        ["Man", "Brazilian Shorthair"],
        ["Martina", "Brazilian Shorthair"],
        ["Meredith", "Brazilian Shorthair"],
        ["Min", "Brazilian Shorthair"],
        ["Myles", "Brazilian Shorthair"],
        ["Napoleon", "Brazilian Shorthair"],
        ["Nelly", "Brazilian Shorthair"],
        ["Norman", "Brazilian Shorthair"],
        ["Pauline", "Brazilian Shorthair"],
        ["Randee", "Brazilian Shorthair"],
        ["Regina", "Brazilian Shorthair"],
        ["Reita", "Brazilian Shorthair"],
        ["Rick", "Brazilian Shorthair"],
        ["Robin", "Brazilian Shorthair"],
        ["Rochelle", "Brazilian Shorthair"],
        ["Roger", "Brazilian Shorthair"],
        ["Russell", "Brazilian Shorthair"],
        ["Serina", "Brazilian Shorthair"],
        ["Seymour", "Brazilian Shorthair"],
        ["Sharita", "Brazilian Shorthair"],
        ["Soledad", "Brazilian Shorthair"],
        ["Sona", "Brazilian Shorthair"],
        ["Sung", "Brazilian Shorthair"],
        ["Sydney", "Brazilian Shorthair"],
        ["Teresa", "Brazilian Shorthair"],
        ["Trisha", "Brazilian Shorthair"],
        ["Ty", "Brazilian Shorthair"],
        ["Wendell", "Brazilian Shorthair"],
        ["Wendy", "Brazilian Shorthair"],
        ["Willis", "Brazilian Shorthair"],
        ["Winfred", "Brazilian Shorthair"],
        ["Zula", "Brazilian Shorthair"]
        ])
      end
    end
  
    describe "expensive_tastes" do
      it "finds the name of the most expensive toy `Tiger` and the owners of that toy" do
        expect(expensive_tastes).to eq([["Beatrice", "Tiger", "Orchid"], ["Charles", "Tiger", "Orchid"], ["Elizabeth", "Tiger", "Orchid"], ["Erich", "Tiger", "Orchid"], ["Florene", "Tiger", "Orchid"], ["Josef", "Tiger", "Orchid"], ["Julissa", "Tiger", "Orchid"], ["Melissa", "Tiger", "Orchid"]])
      end
    end
    
  end
  