

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportJobListStats
        Used By: Catalog
    */

    class InventoryExportJobListStats: Codable {
        
        
        public var success: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case total = "total"
            
        }

        public init(success: Int? = nil, total: Int? = nil) {
            
            self.success = success
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Int.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportJobListStats
        Used By: Catalog
    */

    class InventoryExportJobListStats: Codable {
        
        
        public var success: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case total = "total"
            
        }

        public init(success: Int? = nil, total: Int? = nil) {
            
            self.success = success
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Int.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}

