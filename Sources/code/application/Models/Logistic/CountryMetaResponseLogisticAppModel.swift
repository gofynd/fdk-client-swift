

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: CountryMetaResponse
        Used By: Logistic
    */
    class CountryMetaResponse: Codable {
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var currency: CurrencyObject?
        
        public var phoneCode: String?
        
        public var parentId: String?
        
        public var zone: String?
        
        public var deliverables: [String]?
        
        public var hierarchy: [CountryHierarchy]?
        
        public var logistics: LogisticsResponse?
        

        public enum CodingKeys: String, CodingKey {
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case currency = "currency"
            
            case phoneCode = "phone_code"
            
            case parentId = "parent_id"
            
            case zone = "zone"
            
            case deliverables = "deliverables"
            
            case hierarchy = "hierarchy"
            
            case logistics = "logistics"
            
        }

        public init(currency: CurrencyObject? = nil, deliverables: [String]? = nil, hierarchy: [CountryHierarchy]? = nil, iso2: String? = nil, iso3: String? = nil, logistics: LogisticsResponse? = nil, parentId: String? = nil, phoneCode: String? = nil, zone: String? = nil) {
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.currency = currency
            
            self.phoneCode = phoneCode
            
            self.parentId = parentId
            
            self.zone = zone
            
            self.deliverables = deliverables
            
            self.hierarchy = hierarchy
            
            self.logistics = logistics
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                iso2 = try container.decode(String.self, forKey: .iso2)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                iso3 = try container.decode(String.self, forKey: .iso3)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(CurrencyObject.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                phoneCode = try container.decode(String.self, forKey: .phoneCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentId = try container.decode(String.self, forKey: .parentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                zone = try container.decode(String.self, forKey: .zone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliverables = try container.decode([String].self, forKey: .deliverables)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hierarchy = try container.decode([CountryHierarchy].self, forKey: .hierarchy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logistics = try container.decode(LogisticsResponse.self, forKey: .logistics)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            try? container.encodeIfPresent(deliverables, forKey: .deliverables)
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            try? container.encodeIfPresent(logistics, forKey: .logistics)
            
            
        }
        
    }
}
