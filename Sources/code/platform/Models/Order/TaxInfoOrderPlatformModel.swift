

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TaxInfo
        Used By: Order
    */

    class TaxInfo: Codable {
        
        
        public var b2BGstinNumber: String?
        
        public var gstin: String?
        
        public var panNo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case b2BGstinNumber = "b2b_gstin_number"
            
            case gstin = "gstin"
            
            case panNo = "pan_no"
            
        }

        public init(b2BGstinNumber: String? = nil, gstin: String? = nil, panNo: String? = nil) {
            
            self.b2BGstinNumber = b2BGstinNumber
            
            self.gstin = gstin
            
            self.panNo = panNo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    b2BGstinNumber = try container.decode(String.self, forKey: .b2BGstinNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(b2BGstinNumber, forKey: .b2BGstinNumber)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TaxInfo
        Used By: Order
    */

    class TaxInfo: Codable {
        
        
        public var b2BGstinNumber: String?
        
        public var gstin: String?
        
        public var panNo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case b2BGstinNumber = "b2b_gstin_number"
            
            case gstin = "gstin"
            
            case panNo = "pan_no"
            
        }

        public init(b2BGstinNumber: String? = nil, gstin: String? = nil, panNo: String? = nil) {
            
            self.b2BGstinNumber = b2BGstinNumber
            
            self.gstin = gstin
            
            self.panNo = panNo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    b2BGstinNumber = try container.decode(String.self, forKey: .b2BGstinNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(b2BGstinNumber, forKey: .b2BGstinNumber)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
        }
        
    }
}


