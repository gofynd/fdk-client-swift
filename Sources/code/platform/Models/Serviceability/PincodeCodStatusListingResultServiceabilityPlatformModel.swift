

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeCodStatusListingResult
        Used By: Serviceability
    */

    class PincodeCodStatusListingResult: Codable {
        
        
        public var country: String
        
        public var data: [PincodeCodStatusItem]
        
        public var success: Bool
        
        public var errors: [Error]?
        
        public var page: Page
        
        public var summary: PincodeCodStatusListingSummary
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case data = "data"
            
            case success = "success"
            
            case errors = "errors"
            
            case page = "page"
            
            case summary = "summary"
            
        }

        public init(country: String, data: [PincodeCodStatusItem], errors: [Error]? = nil, page: Page, success: Bool, summary: PincodeCodStatusListingSummary) {
            
            self.country = country
            
            self.data = data
            
            self.success = success
            
            self.errors = errors
            
            self.page = page
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                data = try container.decode([PincodeCodStatusItem].self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    errors = try container.decode([Error].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                summary = try container.decode(PincodeCodStatusListingSummary.self, forKey: .summary)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeCodStatusListingResult
        Used By: Serviceability
    */

    class PincodeCodStatusListingResult: Codable {
        
        
        public var country: String
        
        public var data: [PincodeCodStatusItem]
        
        public var success: Bool
        
        public var errors: [Error]?
        
        public var page: Page
        
        public var summary: PincodeCodStatusListingSummary
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case data = "data"
            
            case success = "success"
            
            case errors = "errors"
            
            case page = "page"
            
            case summary = "summary"
            
        }

        public init(country: String, data: [PincodeCodStatusItem], errors: [Error]? = nil, page: Page, success: Bool, summary: PincodeCodStatusListingSummary) {
            
            self.country = country
            
            self.data = data
            
            self.success = success
            
            self.errors = errors
            
            self.page = page
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                data = try container.decode([PincodeCodStatusItem].self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    errors = try container.decode([Error].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                summary = try container.decode(PincodeCodStatusListingSummary.self, forKey: .summary)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}


