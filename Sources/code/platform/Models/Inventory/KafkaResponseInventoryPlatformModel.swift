

import Foundation


public extension PlatformClient.Inventory {
    /*
        Model: KafkaResponse
        Used By: Inventory
    */

    class KafkaResponse: Codable {
        
        
        public var offset: Int?
        
        public var partition: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case offset = "offset"
            
            case partition = "partition"
            
        }

        public init(offset: Int? = nil, partition: Int? = nil) {
            
            self.offset = offset
            
            self.partition = partition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offset = try container.decode(Int.self, forKey: .offset)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    partition = try container.decode(Int.self, forKey: .partition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offset, forKey: .offset)
            
            
            
            
            try? container.encodeIfPresent(partition, forKey: .partition)
            
            
        }
        
    }
}




