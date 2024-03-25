

import Foundation




public extension PlatformClient.ApplicationClient.Analytics {
    /*
        Model: ConditionsSchema
        Used By: Analytics
    */

    class ConditionsSchema: Codable {
        
        
        public var columnName: String?
        
        public var conditionalOperator: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case columnName = "column_name"
            
            case conditionalOperator = "conditional_operator"
            
            case type = "type"
            
        }

        public init(columnName: String? = nil, conditionalOperator: String? = nil, type: String? = nil) {
            
            self.columnName = columnName
            
            self.conditionalOperator = conditionalOperator
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    columnName = try container.decode(String.self, forKey: .columnName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conditionalOperator = try container.decode(String.self, forKey: .conditionalOperator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(columnName, forKey: .columnName)
            
            
            
            
            try? container.encodeIfPresent(conditionalOperator, forKey: .conditionalOperator)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


