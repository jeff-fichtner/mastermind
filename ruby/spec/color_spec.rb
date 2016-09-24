require_relative '../color'

describe Yellow do
  let (:yellow) { Yellow.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(yellow.status).to eq :untried
    end

    it 'has a writable status' do
      expect { yellow.status = :correct }.to change { yellow.status }.to :correct
    end

    it 'has a readable position' do
      expect(yellow.position).to be_nil
    end

    it 'has a writable position' do
      expect { yellow.position = 3 }.to change { yellow.position }.to 3
    end

    it 'has a readable color' do
      expect(yellow.color).to eq :yellow
    end
  end
end

describe Blue do
  let (:blue) { Blue.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(blue.status).to eq :untried
    end

    it 'has a writable status' do
      expect { blue.status = :correct }.to change { blue.status }.to :correct
    end

    it 'has a readable position' do
      expect(blue.position).to be_nil
    end

    it 'has a writable position' do
      expect { blue.position = 3 }.to change { blue.position }.to 3
    end

    it 'has a readable color' do
      expect(blue.color).to eq :blue
    end
  end
end

describe Green do
  let (:green) { Green.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(green.status).to eq :untried
    end

    it 'has a writable status' do
      expect { green.status = :correct }.to change { green.status }.to :correct
    end

    it 'has a readable position' do
      expect(green.position).to be_nil
    end

    it 'has a writable position' do
      expect { green.position = 3 }.to change { green.position }.to 3
    end

    it 'has a readable color' do
      expect(green.color).to eq :green
    end
  end
end

describe Red do
  let (:red) { Red.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(red.status).to eq :untried
    end

    it 'has a writable status' do
      expect { red.status = :correct }.to change { red.status }.to :correct
    end

    it 'has a readable position' do
      expect(red.position).to be_nil
    end

    it 'has a writable position' do
      expect { red.position = 3 }.to change { red.position }.to 3
    end

    it 'has a readable color' do
      expect(red.color).to eq :red
    end
  end
end

describe Pink do
  let (:pink) { Pink.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(pink.status).to eq :untried
    end

    it 'has a writable status' do
      expect { pink.status = :correct }.to change { pink.status }.to :correct
    end

    it 'has a readable position' do
      expect(pink.position).to be_nil
    end

    it 'has a writable position' do
      expect { pink.position = 3 }.to change { pink.position }.to 3
    end

    it 'has a readable color' do
      expect(pink.color).to eq :pink
    end
  end
end

describe Orange do
  let (:orange) { Orange.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(orange.status).to eq :untried
    end

    it 'has a writable status' do
      expect { orange.status = :correct }.to change { orange.status }.to :correct
    end

    it 'has a readable position' do
      expect(orange.position).to be_nil
    end

    it 'has a writable position' do
      expect { orange.position = 3 }.to change { orange.position }.to 3
    end

    it 'has a readable color' do
      expect(orange.color).to eq :orange
    end
  end
end

describe Purple do
  let (:purple) { Purple.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(purple.status).to eq :untried
    end

    it 'has a writable status' do
      expect { purple.status = :correct }.to change { purple.status }.to :correct
    end

    it 'has a readable position' do
      expect(purple.position).to be_nil
    end

    it 'has a writable position' do
      expect { purple.position = 3 }.to change { purple.position }.to 3
    end

    it 'has a readable color' do
      expect(purple.color).to eq :purple
    end
  end
end

describe White do
  let (:white) { White.new }

  describe "#initialize" do
    it 'has a readable status' do
      expect(white.status).to eq :untried
    end

    it 'has a writable status' do
      expect { white.status = :correct }.to change { white.status }.to :correct
    end

    it 'has a readable position' do
      expect(white.position).to be_nil
    end

    it 'has a writable position' do
      expect { white.position = 3 }.to change { white.position }.to 3
    end

    it 'has a readable color' do
      expect(white.color).to eq :white
    end
  end
end
