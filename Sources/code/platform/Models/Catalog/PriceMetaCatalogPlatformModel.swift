

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceMeta
        Used By: Catalog
    */

    class PriceMeta: Codable {
        
        
        public var currency: String
        
        public var effective: Double
        
        public var marked: Double
        
        public var tpNotes: [String: Any]?
        
        public var transfer: Double
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case effective = "effective"
            
            case marked = "marked"
            
            case tpNotes = "tp_notes"
            
            case transfer = "transfer"
            
            case updatedAt = "updated_at"
            
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            
            self.currency = currency
            
            self.effective = effective
            
            self.marked = marked
            
            self.tpNotes = tpNotes
            
            self.transfer = transfer
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                effective = try container.decode(Double.self, forKey: .effective)
                
            
            
            
                marked = try container.decode(Double.self, forKey: .marked)
                
            
            
            
                do {
                    tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transfer = try container.decode(Double.self, forKey: .transfer)
                
            
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
            
            
            
            
            try? container.encodeIfPresent(transfer, forKey: .transfer)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceMeta
        Used By: Catalog
    */

    class PriceMeta: Codable {
        
        
        public var currency: String
        
        public var effective: Double
        
        public var marked: Double
        
        public var tpNotes: [String: Any]?
        
        public var transfer: Double
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case effective = "effective"
            
            case marked = "marked"
            
            case tpNotes = "tp_notes"
            
            case transfer = "transfer"
            
            case updatedAt = "updated_at"
            
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            
            self.currency = currency
            
            self.effective = effective
            
            self.marked = marked
            
            self.tpNotes = tpNotes
            
            self.transfer = transfer
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                effective = try container.decode(Double.self, forKey: .effective)
                
            
            
            
                marked = try container.decode(Double.self, forKey: .marked)
                
            
            
            
                do {
                    tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transfer = try container.decode(Double.self, forKey: .transfer)
                
            
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
            
            
            
            
            try? container.encodeIfPresent(transfer, forKey: .transfer)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


