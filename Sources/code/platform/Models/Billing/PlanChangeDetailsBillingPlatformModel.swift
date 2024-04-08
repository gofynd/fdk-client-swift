

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PlanChangeDetails
        Used By: Billing
    */

    class PlanChangeDetails: Codable {
        
        
        public var status: String?
        
        public var data: PlanChangeData?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case data = "data"
            
        }

        public init(data: PlanChangeData? = nil, status: String? = nil) {
            
            self.status = status
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(PlanChangeData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}




