

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: AppCurrencyResponse
        Used By: Configuration
    */
    class AppCurrencyResponse: Codable {
        
        public var application: String?
        
        public var defaultCurrency: DefaultCurrency?
        
        public var supportedCurrency: [Currency]?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case defaultCurrency = "default_currency"
            
            case supportedCurrency = "supported_currency"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(application: String? = nil, createdAt: String? = nil, defaultCurrency: DefaultCurrency? = nil, modifiedAt: String? = nil, supportedCurrency: [Currency]? = nil, id: String? = nil) {
            
            self.application = application
            
            self.defaultCurrency = defaultCurrency
            
            self.supportedCurrency = supportedCurrency
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                application = try container.decode(String.self, forKey: .application)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                defaultCurrency = try container.decode(DefaultCurrency.self, forKey: .defaultCurrency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                supportedCurrency = try container.decode([Currency].self, forKey: .supportedCurrency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)
            
            
            
            try? container.encodeIfPresent(supportedCurrency, forKey: .supportedCurrency)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
}
