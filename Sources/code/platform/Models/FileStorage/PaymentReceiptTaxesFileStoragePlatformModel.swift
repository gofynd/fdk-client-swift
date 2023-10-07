

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: PaymentReceiptTaxes
        Used By: FileStorage
    */

    class PaymentReceiptTaxes: Codable {
        
        
        public var gstin: String?
        
        public var pancard: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstin = "gstin"
            
            case pancard = "pancard"
            
        }

        public init(gstin: String? = nil, pancard: String? = nil) {
            
            self.gstin = gstin
            
            self.pancard = pancard
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pancard = try container.decode(String.self, forKey: .pancard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(pancard, forKey: .pancard)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: PaymentReceiptTaxes
        Used By: FileStorage
    */

    class PaymentReceiptTaxes: Codable {
        
        
        public var gstin: String?
        
        public var pancard: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstin = "gstin"
            
            case pancard = "pancard"
            
        }

        public init(gstin: String? = nil, pancard: String? = nil) {
            
            self.gstin = gstin
            
            self.pancard = pancard
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pancard = try container.decode(String.self, forKey: .pancard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(pancard, forKey: .pancard)
            
            
        }
        
    }
}


