describe Card do
    subject(:card) { Card.new(11, "H")}
    describe '#initialize' do
        it "given card must be valid" do
            expect { Card.new("11", "H")}.to raise_error(ArgumentError)
        end
    end

    describe '#suit' do
        it "should give us correct suit" do
            expect (card.suit).to eq("H")
        end
    end

    describe '#number' do
        it "should give us correct number" do
            expect(card.number).to eq(11)
        end
    end
    
    

end