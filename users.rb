class UserNode

    attr_accessor :user, :pass, :next_node

    def initialize (user,pass,next_node)
        @user = user
		@pass = pass
        @next_node = next_node
        puts user.to_s + " ingresado!"
    end
end

class LinkedList

    def initialize (user,pass)
        @head = UserNode.new(user,pass,nil)
    end
    
    def add(user,pass)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = UserNode.new(user,pass,nil)
        self    
    end

	def display
        current = @head
        while current.next_node != nil 
			puts "Usuario: " << current.user.to_s << "\nPassword: " << current.pass.to_s
            current = current.next_node
        end
		puts "Usuario: " << current.user.to_s << "\nPassword: " << current.pass.to_s
    end

end
