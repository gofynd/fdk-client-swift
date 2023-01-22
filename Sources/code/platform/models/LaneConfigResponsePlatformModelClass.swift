

import Foundation
public extension PlatformClient {
    /*
        Model: LaneConfigResponse
        Used By: Order
    */

    class LaneConfigResponse: Codable {
        
        
        public var superLanes: [SuperLane]?
        

        public enum CodingKeys: String, CodingKey {
            
            case superLanes = "super_lanes"
            
        }

        public init(superLanes: [SuperLane]? = nil) {
            
            self.superLanes = superLanes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    superLanes = try container.decode([SuperLane].self, forKey: .superLanes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(superLanes, forKey: .superLanes)
            
            
        }
        
    }
}
