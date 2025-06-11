

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: BasicDelete
        Used By: Communication
    */

    class BasicDelete: Codable {
        
        
        public var acknowledged: Bool?
        
        public var deletedCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case acknowledged = "acknowledged"
            
            case deletedCount = "deleted_count"
            
        }

        public init(acknowledged: Bool? = nil, deletedCount: Int? = nil) {
            
            self.acknowledged = acknowledged
            
            self.deletedCount = deletedCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    acknowledged = try container.decode(Bool.self, forKey: .acknowledged)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deletedCount = try container.decode(Int.self, forKey: .deletedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(acknowledged, forKey: .acknowledged)
            
            
            
            
            try? container.encodeIfPresent(deletedCount, forKey: .deletedCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: BasicDelete
        Used By: Communication
    */

    class BasicDelete: Codable {
        
        
        public var acknowledged: Bool?
        
        public var deletedCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case acknowledged = "acknowledged"
            
            case deletedCount = "deleted_count"
            
        }

        public init(acknowledged: Bool? = nil, deletedCount: Int? = nil) {
            
            self.acknowledged = acknowledged
            
            self.deletedCount = deletedCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    acknowledged = try container.decode(Bool.self, forKey: .acknowledged)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deletedCount = try container.decode(Int.self, forKey: .deletedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(acknowledged, forKey: .acknowledged)
            
            
            
            
            try? container.encodeIfPresent(deletedCount, forKey: .deletedCount)
            
            
        }
        
    }
}


