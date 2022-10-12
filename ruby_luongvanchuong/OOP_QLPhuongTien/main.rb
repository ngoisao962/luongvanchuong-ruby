require_relative 'XeMay.rb'
require_relative 'XeTai.rb'
require_relative 'Oto.rb'
require_relative 'QLPTGT.rb'

qlptgt = QLPTGT.new

# oto = Oto.new("id","hsx","nsx","dongxe","gia","bienso","mau","soccho","dongCo","nhienLieu","soTuiK","ngayDK")
# xemay = XeMay.new("id2","hsx2","nsx2","dongxe2","gia2","bienso2","mau2","congSuat2","DungTich2")
# xetai = XeTai.new("id3","hsx3","nsx3","dongxe3","gia3","bienso3","mau3","trongTai3")

# qlptgt.themDS(oto)
# qlptgt.themDS(xemay)
# qlptgt.themDS(xetai)

# qlptgt.inDS



while (true)
    p "--------------------------------------------"
    puts("QUAN LY PHUONG TIEN GIAO THONG");
    puts("Enter 1: Them Phuong Tien");
    puts("Enter 2: In Danh Sach Phuong Tien");
    puts("Enter 3: Xoa Phuong Tien: " );
    puts("Enter 4: Tim Phuong Tien: " );
    puts("Enter 5: Ket Thuc:");

    print "Moi nhap lua chon cua ban: "
    index_205 = gets.to_i

    case index_205 
    when 1
        p "-------- NHAP VAO PHUONG TIEN: ----------------"
        puts("Enter 1: Nhap Oto");
        puts("Enter 2: Nhap Xe May");
        puts("Enter 3: Nhap Xe Tai");
        puts("Enter 4: Thoat");
        print "Moi nhap lua chon cua ban: "
        choosen_205 = gets.to_i

        case choosen_205
        when 1
            p "-------- NHAP VAO OTO: ----------------"
            while true 
                print("nhap vao id: ")
                id_205 = gets.chomp.to_s 
                if (qlptgt.check_DuplicateID(id_205) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Hang San Xuat : ")
            hsx_205 = gets.chomp.to_s
            print("Nhap vao Nha SX : ")
            nsx_205 = gets.chomp.to_s
            print("nhap vao Dong Xe: ")
            dongxe_205 = gets.chomp.to_s
            print("nhap vao gia: ")
            gia_205 = gets.to_i
            print("nhap vao bien so: ")
            bienso_205 = gets.chomp.to_s
            print("nhap vao mau: ")
            mau_205 = gets.chomp.to_s
            print("nhap vao soCho: ")
            soCho_205 = gets.to_i
            print("nhap vao Dong Co: ")
            dongCo_205 = gets.chomp.to_s
            print("nhap vao Nhien Lieu: ")
            nhienLieu_205 = gets.chomp.to_s
            print("nhap vao so Tui Khi: ")
            soTuiK_205 = gets.to_i
            print("nhap vao ngay DK: ")
            ngayDK_205 = gets.chomp.to_s
            # oto = Oto.new("id","hsx","nsx","dongxe","gia","bienso","mau","soccho","dongCo","nhienLieu","soTuiK","ngayDK")
            oto = Oto.new(id_205,hsx_205,nsx_205,dongxe_205,gia_205,bienso_205,mau_205,soCho_205,dongCo_205,nhienLieu_205,soTuiK_205,ngayDK_205)
            
            qlptgt.themDS(oto)
           
        when 2
            p "-------- NHAP VAO XE MAY: ----------------"
            while true 
                print("nhap vao id: ")
                id_205 = gets.chomp.to_s 
                if (qlptgt.check_DuplicateID(id_205) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Hang San Xuat : ")
            hsx_205 = gets.chomp.to_s
            print("Nhap vao Nha SX : ")
            nsx_205 = gets.chomp.to_s
            print("nhap vao Dong Xe: ")
            dongxe_205 = gets.chomp.to_s
            print("nhap vao gia: ")
            gia_205 = gets.to_i
            print("nhap vao bien so: ")
            bienso_205 = gets.chomp.to_s
            print("nhap vao mau: ")
            mau_205 = gets.chomp.to_s
            print("nhap vao Cong Suat: ")
            congSuat_205 = gets.chomp.to_s
            print("nhap vao Dung Tich: ")
            dungTich_205 = gets.chomp.to_s

            # xemay = XeMay.new("id2","hsx2","nsx2","dongxe2","gia2","bienso2","mau2","congSuat2","DungTich2")
            xemay = XeMay.new(id_205,hsx_205,nsx_205,dongxe_205,gia_205,bienso_205,mau_205,congSuat_205,dungTich_205)

            qlptgt.themDS(xemay)
        when 3
            p "-------- NHAP VAO XE TAI: ----------------"
            while true 
                print("nhap vao id: ")
                id_205 = gets.chomp.to_s 
                if (qlptgt.check_DuplicateID(id_205) == true)
                    p "ID BAN NHAP DA TON TAI. Vui long nhap lai !"
                else break
                end
            end

            print("nhap vao Hang San Xuat : ")
            hsx_205 = gets.chomp.to_s
            print("Nhap vao Nha SX : ")
            nsx_205 = gets.chomp.to_s
            print("nhap vao Dong Xe: ")
            dongxe_205 = gets.chomp.to_s
            print("nhap vao gia: ")
            gia_205 = gets.to_i
            print("nhap vao bien so: ")
            bienso_205 = gets.chomp.to_s
            print("nhap vao mau: ")
            mau_205 = gets.chomp.to_s
            print("nhap vao Trong Tai: ")
            trongTai_205 = gets.chomp.to_s
            # xetai = XeTai.new("id3","hsx3","nsx3","dongxe3","gia3","bienso3","mau3","trongTai3")
            xetai = XeTai.new(id_205,hsx_205,nsx_205,dongxe_205,gia_205,bienso_205,mau_205,trongTai_205)   
            qlptgt.themDS(xetai) 
        else 
            p "Ket thuc Nhap"
        end

    when 2
        p "-------DANH SACH PHUONG TIEN-----------"
        qlptgt.inDS
    when 3
        p "------XOA PHUONG TIEN THEO ID---------"
        print "Nhap ID can Xoa: "
        deleteID_205 = gets.chomp.to_s
        qlptgt.deleteTL(deleteID_205)
        p "Xoa Thanh Cong !"    
    when 4
        p "------TIM KIEM PHUONG TIEN THEO LOAI---------"
        puts("Enter 1: tim Hang SX");
        puts("Enter 2: Tim Bien");
        puts("Enter 3: Tim mau");
        puts("Enter 4: to Exit");
        print "Nhap lua chon cua ban: "
        search_choosen_205 = gets.to_i
        case search_choosen_205
        when 1
            print("Nhap vao HSX: ")
            s_hsx_205 = gets.chomp.to_s
            qlptgt.search_HSX(s_hsx_205)
        when 2
            print("Nhap vao Bien: ")
            s_bien_205 = gets.chomp.to_s
            qlptgt.search_BienSo(s_bienso_205)
        when 3
            print("Nhap vao Mau: ")
            s_mau_205 = gets.chomp.to_s
            qlptgt.search_Mau(s_mau_205)  
        else
            p "Ket thuc tim kiem"
        end
    else
         p "Ket Thuc Chuong Trinh"
         break
    end
end




