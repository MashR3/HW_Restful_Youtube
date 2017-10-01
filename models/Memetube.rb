

class MemeTube

	attr_accessor :id, :title, :description, :url, :genre

	def self.open_connection
		PGconn.connect( dbname: "vids" )
	end


	#INDEX
	def self.all  
		conn = self.open_connection
		sql = "SELECT * FROM vids;"

		results = conn.exec(sql)

		vids = results.map do |record|
			self.hydrate(record)
		end

		vids

	end

	# NEW
	def self.hydrate vids_data
		vids = MemeTube.new
		vids.id = vids_data['id']
		vids.title = vids_data['title']
		vids.url = vids_data['url']
		vids.description = vids_data['description']
		vids.genre = vids_data['genre']

		vids
	end


	#SHOW

	def self.find id 
		conn = self.open_connection
		sql = "SELECT * FROM vids WHERE id =#{id}"
		vids = conn.exec(sql)

		vids = self.hydrate vids[0]
			# Return [0] because it will always be the first one when you find it by ID!!! Get the infor out!
		vids
	end

	#CREATE & UPDATE
	def save 
		conn = MemeTube.open_connection
		if !self.id 
			sql = "INSERT INTO vids (url, title, description, genre) VALUES ('#{self.url}', '#{self.title}', '#{self.description}', '#{self.genre}')"
		else
			sql = "UPDATE vids SET title='#{self.title}', url = '#{self.url}', description = '#{self.description}', genre = '#{self.genre}' WHERE id = '#{self.id}'"
		end

		conn.exec(sql)

	end


	#DELETE
	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM vids WHERE id = #{id}"
		conn.exec(sql)
		# Not asking to return a record so doesn't need to be stored in a variable. The conn. statement.


	end








end