class User < ApplicationRecord
    validates_uniqueness_of :username

    def self.generate
        adjs = ['Ancient', 'Creative', 'Dangerous', 'Effective', 'Flying', 'Gilded']
        nouns = ['Strategy', 'Intern', 'Jackhammer', 'Lion', 'Master']
        number = rand.to_s[2..4]
        username = "#{adjs.sample}-#{nouns.sample}-#{number}"
        create(username: username)
    end
end
