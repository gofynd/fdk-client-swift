

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: HistoryPayload
        Used By: Webhook
    */

    class HistoryPayload: Codable {
        
        
        public var type: String?
        
        public var pageNo: Int?
        
        public var pageSize: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
        }

        public init(pageNo: Int? = nil, pageSize: Int? = nil, type: String? = nil) {
            
            self.type = type
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
        }
        
    }
}




