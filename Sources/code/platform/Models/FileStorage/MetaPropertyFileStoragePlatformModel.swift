

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: MetaProperty
        Used By: FileStorage
    */

    class MetaProperty: Codable {
        
        
        public var shipmentIdBarcodeGenerator: ShipmentIdBarcodeGenerator?
        
        public var signedQrcodeGenerator: SignedQrcodeGenerator?
        
        public var upiQrcodeGenerator: UpiQrcodeGenerator?
        
        public var digitalsignatureGenerator: DigitalsignatureGenerator?
        
        public var awbNumberLabelBarcodeGenerator: AwbNumberLabelBarcodeGenerator?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentIdBarcodeGenerator = "shipment_id_barcode_generator"
            
            case signedQrcodeGenerator = "signed_qrcode_generator"
            
            case upiQrcodeGenerator = "upi_qrcode_generator"
            
            case digitalsignatureGenerator = "digitalsignature_generator"
            
            case awbNumberLabelBarcodeGenerator = "awb_number_label_barcode_generator"
            
        }

        public init(awbNumberLabelBarcodeGenerator: AwbNumberLabelBarcodeGenerator? = nil, digitalsignatureGenerator: DigitalsignatureGenerator? = nil, shipmentIdBarcodeGenerator: ShipmentIdBarcodeGenerator? = nil, signedQrcodeGenerator: SignedQrcodeGenerator? = nil, upiQrcodeGenerator: UpiQrcodeGenerator? = nil) {
            
            self.shipmentIdBarcodeGenerator = shipmentIdBarcodeGenerator
            
            self.signedQrcodeGenerator = signedQrcodeGenerator
            
            self.upiQrcodeGenerator = upiQrcodeGenerator
            
            self.digitalsignatureGenerator = digitalsignatureGenerator
            
            self.awbNumberLabelBarcodeGenerator = awbNumberLabelBarcodeGenerator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipmentIdBarcodeGenerator = try container.decode(ShipmentIdBarcodeGenerator.self, forKey: .shipmentIdBarcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    signedQrcodeGenerator = try container.decode(SignedQrcodeGenerator.self, forKey: .signedQrcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiQrcodeGenerator = try container.decode(UpiQrcodeGenerator.self, forKey: .upiQrcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    digitalsignatureGenerator = try container.decode(DigitalsignatureGenerator.self, forKey: .digitalsignatureGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumberLabelBarcodeGenerator = try container.decode(AwbNumberLabelBarcodeGenerator.self, forKey: .awbNumberLabelBarcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentIdBarcodeGenerator, forKey: .shipmentIdBarcodeGenerator)
            
            
            
            
            try? container.encodeIfPresent(signedQrcodeGenerator, forKey: .signedQrcodeGenerator)
            
            
            
            
            try? container.encodeIfPresent(upiQrcodeGenerator, forKey: .upiQrcodeGenerator)
            
            
            
            
            try? container.encodeIfPresent(digitalsignatureGenerator, forKey: .digitalsignatureGenerator)
            
            
            
            
            try? container.encodeIfPresent(awbNumberLabelBarcodeGenerator, forKey: .awbNumberLabelBarcodeGenerator)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: MetaProperty
        Used By: FileStorage
    */

    class MetaProperty: Codable {
        
        
        public var shipmentIdBarcodeGenerator: ShipmentIdBarcodeGenerator?
        
        public var signedQrcodeGenerator: SignedQrcodeGenerator?
        
        public var upiQrcodeGenerator: UpiQrcodeGenerator?
        
        public var digitalsignatureGenerator: DigitalsignatureGenerator?
        
        public var awbNumberLabelBarcodeGenerator: AwbNumberLabelBarcodeGenerator?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentIdBarcodeGenerator = "shipment_id_barcode_generator"
            
            case signedQrcodeGenerator = "signed_qrcode_generator"
            
            case upiQrcodeGenerator = "upi_qrcode_generator"
            
            case digitalsignatureGenerator = "digitalsignature_generator"
            
            case awbNumberLabelBarcodeGenerator = "awb_number_label_barcode_generator"
            
        }

        public init(awbNumberLabelBarcodeGenerator: AwbNumberLabelBarcodeGenerator? = nil, digitalsignatureGenerator: DigitalsignatureGenerator? = nil, shipmentIdBarcodeGenerator: ShipmentIdBarcodeGenerator? = nil, signedQrcodeGenerator: SignedQrcodeGenerator? = nil, upiQrcodeGenerator: UpiQrcodeGenerator? = nil) {
            
            self.shipmentIdBarcodeGenerator = shipmentIdBarcodeGenerator
            
            self.signedQrcodeGenerator = signedQrcodeGenerator
            
            self.upiQrcodeGenerator = upiQrcodeGenerator
            
            self.digitalsignatureGenerator = digitalsignatureGenerator
            
            self.awbNumberLabelBarcodeGenerator = awbNumberLabelBarcodeGenerator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipmentIdBarcodeGenerator = try container.decode(ShipmentIdBarcodeGenerator.self, forKey: .shipmentIdBarcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    signedQrcodeGenerator = try container.decode(SignedQrcodeGenerator.self, forKey: .signedQrcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiQrcodeGenerator = try container.decode(UpiQrcodeGenerator.self, forKey: .upiQrcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    digitalsignatureGenerator = try container.decode(DigitalsignatureGenerator.self, forKey: .digitalsignatureGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumberLabelBarcodeGenerator = try container.decode(AwbNumberLabelBarcodeGenerator.self, forKey: .awbNumberLabelBarcodeGenerator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentIdBarcodeGenerator, forKey: .shipmentIdBarcodeGenerator)
            
            
            
            
            try? container.encodeIfPresent(signedQrcodeGenerator, forKey: .signedQrcodeGenerator)
            
            
            
            
            try? container.encodeIfPresent(upiQrcodeGenerator, forKey: .upiQrcodeGenerator)
            
            
            
            
            try? container.encodeIfPresent(digitalsignatureGenerator, forKey: .digitalsignatureGenerator)
            
            
            
            
            try? container.encodeIfPresent(awbNumberLabelBarcodeGenerator, forKey: .awbNumberLabelBarcodeGenerator)
            
            
        }
        
    }
}


