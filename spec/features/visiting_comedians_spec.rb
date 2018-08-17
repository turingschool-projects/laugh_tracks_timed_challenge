RSpec.describe "Comedians Page" do
  describe "has correct information displayed" do
    it "should display comedian age and name" do
      Comedian.create(name: "Billy Jones", age: 60000)

      visit "/comedians"

      expect(page).to have_content("All Comedians")
      expect(page).to have_content("Billy Jones")
      expect(page).to have_content("60000")
    end
    it "should display list of comedians specials and count for each" do
      bjones = Comedian.create(name: "Billy Jones", age: 60000)
      laugh_at_me = Special.create(name: "Laugh At Me")
      laugh_with_me = Special.create(name: "Laugh With Me")
      bjones.specials << laugh_at_me
      bjones.specials << laugh_with_me

      visit "/comedians"

      expect(page).to have_content("Laugh At Me")
      expect(page).to have_content("Laugh With Me")
      within(".special_count") do
        expect(page).to have_content("Special Count: 2")
      end
    end
    it "should display average age for all comedians" do
      bjones = Comedian.create(name: "Billy Jones", age: 40)
      cjones = Comedian.create(name: "Cilly Jones", age: 60)
      djones = Comedian.create(name: "Dilly Jones", age: 200)

      visit "/comedians"

      expect(page).to have_content("Average Age: 100")
    end
  end
  context "with an age search parameter"
    it "should only include comedian with age and exclude others" do
      bjones = Comedian.create(name: "Billy Jones", age: 40)
      cjones = Comedian.create(name: "Cilly Jones", age: 60)
      djones = Comedian.create(name: "Dilly Jones", age: 200)

      visit "/comedians?age=60"

      expect(page).to have_content("Cilly Jones")
      expect(page).to_not have_content("Billy Jones")
      expect(page).to_not have_content("Dilly Jones")
    end
end
