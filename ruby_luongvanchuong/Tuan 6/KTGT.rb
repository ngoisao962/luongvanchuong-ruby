# Tên Lương Văn chương
# Mã sinh viên 1911505310205
class Phuongtien


    def initialize

    end 

   

    def enter_infomation
      
        print "Nhập ID: "
        @id205 = gets.chomp
        print "Hãng sản xuất: "
        @hangsanxuat205 = gets.chomp
        print "Năm sản xuất: "
        @namsanxuat205 = gets.to_i
        print "Dòng xe: "
        @dongxe205 = gets.chomp
        print "Giá bán: "
        @giaban205 = gets.to_i
        print "Biển số xe: "
        @biensoxe205 = gets.chomp
        print "Màu xe: "
        @mauxe205 = gets.chomp
    end

    def info    
        puts "Id : #{@id205}"
        puts "Hãng sản xuất : #{@hangsanxuat205}"
        puts "Năm sản xuất : #{@namsanxuat205}"
        puts "Dòng xe: #{@namsanxuat205}"
        puts "Giá bán: #{@giaban205}"
        puts "Biển số xe: #{@biensoxe205}"
        puts "Màu xe: #{@mauxe205}"
    end
    attr_accessor :id205, :hangsanxuat205, :namsanxuat205, :giaban205, :biensoxe205, :mauxe205
end 



class Oto < Phuongtien

    def initialize
    end

    attr_accessor :id205, :hangsanxuat205, :namsanxuat205, :giaban205, :biensoxe205, :mauxe205, :sochongoi205, :kieudongco205, :nhienlieu205, :sotuikhi205, :ngaydangkiem205

    def enter_infomation
        super
        print "Số chỗ ngồi: "
        @sochongoi205 = gets.to_i
        print "Kiểu động cơ: "
        @kieudongco205 = gets.chomp
        print "Nhiên liệu (Nhập 0 là xăng hoặc 1 là dầu): "
        @nhienlieu205 = gets.to_i
        print "Số túi khí: "
        @sotuikhi205 = gets.to_i
        print "Ngày đăng kiểm: "
        @ngaydangkiem205 = gets.chomp
    end

    def info 
      super   
      puts "Số chỗ ngồi: #{@sochongoi205}"
      puts "Kiểu động cơ: #{@kieudongco205}"
      if @nhienlieu205 == 0 
                  puts'Giới tính: Xăng'
              elsif @nhienlieu205 == 1
                  puts 'Giới Tính: Dầu'
              else 
                  puts 'Giới Tính: Khác'
              end
      puts "Số túi khí: #{@sotuikhi205}"
      puts "Ngày đăng kiểm: #{@ngaydangkiem205}"
    end

end

class Xemay < Phuongtien

    def initialize
    end

    def enter_infomation
        super
        print "Công suất: "
        @congsuat205 = gets.to_i
        print "Dung tích: "
        @dungtich205 = gets.to_i
    end
    def info 
        super   
        puts "Công suất: #{@congsuat205}"
      puts "Dung tích: #{@dungtich205}"
    end
    attr_accessor :id, :hangsanxuat205, :namsanxuat205, :giaban205, :biensoxe205, :mauxe205, :congsuat205, :dungtich205
end

class Xetai < Phuongtien
    def initialize
    end

    def enter_infomation
        super
        print "Trọng tải: "
        @trongtai205 = gets.to_i
    end
    def info 
        super   
        puts "Trọng tải: #{@trongtai205}"
    end
    attr_accessor :id205, :hangsanxuat205, :namsanxuat205, :giaban205, :biensoxe205, :mauxe205, :trongtai205

end

class QLPTGT
    def initialize
    end

    $Phuongtiens = []
    
    def themPhuongtien
        puts"1. Thêm ô tô: "
        puts"2. Thêm xe máy: "
        puts"3. Thêm xe tải: "
        print "Mời bạn chọn: "
        choose = gets.to_i
        if choose ==1 
          phuongtien =Oto.new
         
        elsif choose == 2
          phuongtien =Xemay.new
        else 
          phuongtien = Xetai.new
        end
      phuongtien.enter_infomation
        $Phuongtiens << phuongtien       
    end

    def thongtin 
        puts "============Danh sách phương tiện là================"    
        $Phuongtiens.each do |phuongtien|
            puts phuongtien.info
        end
    end

    def deletePhuongTien
        puts "Nhap ID phuong tien can xoa: "
        maid205 = gets.chomp
        $Phuongtiens.delete_if {|pt| pt.id205 == maid205}
        puts "===Danh sach phuong tien sau khi xoa==="    
        $Phuongtiens.each do |pt|
            puts pt.info
        end
    end
end



$continute = true
while $continute

    quanly = QLPTGT.new
    puts "1. Thêm mới phương tiện."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách phương tiện ."
    puts "4. Xóa phương tiện"
    puts "5. Thoát khỏi chương trình."

    print "Mời bạn chọn: "
    choose = gets.to_i

    case choose
    when 1
        quanly.themPhuongtien
    when 2
       puts "Hiện đang bị lỗi"
    when 3
        quanly.thongtin
    when 4
        quanly.deletePhuongTien
    else
       puts "Xin tạm biệt!"
        $continute = false
    end
end