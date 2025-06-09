package FORYOU;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.io.ByteArrayInputStream;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public class QRCodeFrame extends JFrame {
    private static final long serialVersionUID = 1L;
    private static final String QR_CODE_IMAGE_FORMAT = "PNG";
    private int qr_id;

    public QRCodeFrame(String userData) {
        setTitle("QR Code");
        setSize(400, 400);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        QRCodePanel panel = new QRCodePanel(userData);
        add(panel);
    }

    QRCodeFrame(int qr_id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    

    private static class QRCodePanel extends JPanel {
        private static final long serialVersionUID = 1L;
        private static final int QR_CODE_IMAGE_SIZE = 250;

        private BufferedImage qrCodeImage;

        public QRCodePanel(String userData) {
            try {
                Map<EncodeHintType, Object> hints = new HashMap<>();
                hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");

                QRCodeWriter qrCodeWriter = new QRCodeWriter();
                BitMatrix bitMatrix = qrCodeWriter.encode(userData, BarcodeFormat.QR_CODE, QR_CODE_IMAGE_SIZE,
                        QR_CODE_IMAGE_SIZE, hints);

                ByteArrayOutputStream pngOutputStream = new ByteArrayOutputStream();
                MatrixToImageWriter.writeToStream(bitMatrix, QR_CODE_IMAGE_FORMAT, pngOutputStream);
                byte[] pngData = pngOutputStream.toByteArray();

                qrCodeImage = ImageIO.read(new ByteArrayInputStream(pngData));
            } catch (WriterException | IOException e) {
                e.printStackTrace();
            }
        }

        @Override
        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            g.drawImage(qrCodeImage, 75, 75, null);
        }
    }

    public static void main(String[] args) {
        Connection con=null;
        con=DBConnection.connect();
        
        
        try{
        String userData = "SELECT * FROM reserve WHERE `reservid`=+qr_id "; // Replace this with data from the database
PreparedStatement pst=con.prepareStatement(userData);
           pst.execute();
        QRCodeFrame frame = new QRCodeFrame(userData);
        frame.setVisible(true);
        }catch(Exception e){
            System.out.println("The error is: "+ e);
        }
    }
}

