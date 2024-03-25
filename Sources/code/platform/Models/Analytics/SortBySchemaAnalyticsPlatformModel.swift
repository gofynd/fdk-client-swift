

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: SortBySchema
        Used By: Analytics
    */

    class SortBySchema: Codable {
        
        
        public var column: String?
        
        public var order: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case column = "column"
            
            case order = "order"
            
        }

        public init(column: String? = nil, order: String? = nil) {
            
            self.column = column
            
            self.order = order
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    column = try container.decode(String.self, forKey: .column)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    order = try container.decode(String.self, forKey: .order)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(column, forKey: .column)
            
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
        }
        
    }
}


