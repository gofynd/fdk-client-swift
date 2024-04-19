

import Foundation


public extension PlatformClient.Order {
    /*
        Model: TaxDetails
        Used By: Order
    */

    class TaxDetails: Codable {
        
        
        public var panNo: String?
        
        public var gstin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
            case gstin = "gstin"
            
        }

        public init(gstin: String? = nil, panNo: String? = nil) {
            
            self.panNo = panNo
            
            self.gstin = gstin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(panNo, forKey: .panNo)
            
            
            
            
            try? container.encode(gstin, forKey: .gstin)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: TaxDetails
        Used By: Order
    */

    class TaxDetails: Codable {
        
        
        public var panNo: String?
        
        public var gstin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
            case gstin = "gstin"
            
        }

        public init(gstin: String? = nil, panNo: String? = nil) {
            
            self.panNo = panNo
            
            self.gstin = gstin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(panNo, forKey: .panNo)
            
            
            
            
            try? container.encode(gstin, forKey: .gstin)
            
            
        }
        
    }
}


