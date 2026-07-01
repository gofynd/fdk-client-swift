

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: ErrorMeta
        Used By: Finance
    */
    class ErrorMeta: Codable {
        
        public var columnsErrors: [ErrorMetaItems]?
        

        public enum CodingKeys: String, CodingKey {
            
            case columnsErrors = "columns_errors"
            
        }

        public init(columnsErrors: [ErrorMetaItems]? = nil) {
            
            self.columnsErrors = columnsErrors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                columnsErrors = try container.decode([ErrorMetaItems].self, forKey: .columnsErrors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(columnsErrors, forKey: .columnsErrors)
            
            
        }
        
    }
}
