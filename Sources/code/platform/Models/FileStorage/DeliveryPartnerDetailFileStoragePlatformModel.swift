

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: DeliveryPartnerDetail
        Used By: FileStorage
    */

    class DeliveryPartnerDetail: Codable {
        
        
        public var name: String?
        
        public var awbNumberBarcode: String?
        
        public var awbNumber: String?
        
        public var ewayBillNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case awbNumberBarcode = "awb_number_barcode"
            
            case awbNumber = "awb_number"
            
            case ewayBillNumber = "eway_bill_number"
            
        }

        public init(awbNumber: String? = nil, awbNumberBarcode: String? = nil, ewayBillNumber: String? = nil, name: String? = nil) {
            
            self.name = name
            
            self.awbNumberBarcode = awbNumberBarcode
            
            self.awbNumber = awbNumber
            
            self.ewayBillNumber = ewayBillNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumberBarcode = try container.decode(String.self, forKey: .awbNumberBarcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumber = try container.decode(String.self, forKey: .awbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillNumber = try container.decode(String.self, forKey: .ewayBillNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(awbNumberBarcode, forKey: .awbNumberBarcode)
            
            
            
            
            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)
            
            
            
            
            try? container.encode(ewayBillNumber, forKey: .ewayBillNumber)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: DeliveryPartnerDetail
        Used By: FileStorage
    */

    class DeliveryPartnerDetail: Codable {
        
        
        public var name: String?
        
        public var awbNumberBarcode: String?
        
        public var awbNumber: String?
        
        public var ewayBillNumber: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case awbNumberBarcode = "awb_number_barcode"
            
            case awbNumber = "awb_number"
            
            case ewayBillNumber = "eway_bill_number"
            
        }

        public init(awbNumber: String? = nil, awbNumberBarcode: String? = nil, ewayBillNumber: String? = nil, name: String? = nil) {
            
            self.name = name
            
            self.awbNumberBarcode = awbNumberBarcode
            
            self.awbNumber = awbNumber
            
            self.ewayBillNumber = ewayBillNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumberBarcode = try container.decode(String.self, forKey: .awbNumberBarcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    awbNumber = try container.decode(String.self, forKey: .awbNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ewayBillNumber = try container.decode(String.self, forKey: .ewayBillNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(awbNumberBarcode, forKey: .awbNumberBarcode)
            
            
            
            
            try? container.encodeIfPresent(awbNumber, forKey: .awbNumber)
            
            
            
            
            try? container.encode(ewayBillNumber, forKey: .ewayBillNumber)
            
            
        }
        
    }
}


