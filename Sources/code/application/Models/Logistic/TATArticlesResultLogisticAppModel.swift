

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: TATArticlesResult
        Used By: Logistic
    */
    class TATArticlesResult: Codable {
        
        public var manufacturingTimeUnit: String?
        
        public var error: TATErrorSchemaResult?
        
        public var isCodAvailable: Bool?
        
        public var promise: TATPromiseResult?
        
        public var manufacturingTime: Int?
        
        public var category: TATCategoryDetails?
        
        public var manufacturingTimeSeconds: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case error = "error"
            
            case isCodAvailable = "is_cod_available"
            
            case promise = "promise"
            
            case manufacturingTime = "manufacturing_time"
            
            case category = "category"
            
            case manufacturingTimeSeconds = "_manufacturing_time_seconds"
            
        }

        public init(category: TATCategoryDetails? = nil, error: TATErrorSchemaResult? = nil, isCodAvailable: Bool? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, promise: TATPromiseResult? = nil, manufacturingTimeSeconds: Int? = nil) {
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.error = error
            
            self.isCodAvailable = isCodAvailable
            
            self.promise = promise
            
            self.manufacturingTime = manufacturingTime
            
            self.category = category
            
            self.manufacturingTimeSeconds = manufacturingTimeSeconds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(TATErrorSchemaResult.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promise = try container.decode(TATPromiseResult.self, forKey: .promise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                category = try container.decode(TATCategoryDetails.self, forKey: .category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                manufacturingTimeSeconds = try container.decode(Int.self, forKey: .manufacturingTimeSeconds)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            try? container.encodeIfPresent(manufacturingTimeSeconds, forKey: .manufacturingTimeSeconds)
            
            
        }
        
    }
}
