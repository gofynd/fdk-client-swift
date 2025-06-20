

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductFiltersValue
        Used By: Catalog
    */

    class ProductFiltersValue: Codable {
        
        
        public var count: Int?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var display: String
        
        public var displayFormat: String?
        
        public var isSelected: Bool
        
        public var max: Int?
        
        public var min: Int?
        
        public var queryFormat: String?
        
        public var selectedMax: Int?
        
        public var selectedMin: Int?
        
        public var value: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case display = "display"
            
            case displayFormat = "display_format"
            
            case isSelected = "is_selected"
            
            case max = "max"
            
            case min = "min"
            
            case queryFormat = "query_format"
            
            case selectedMax = "selected_max"
            
            case selectedMin = "selected_min"
            
            case value = "value"
            
        }

        public init(count: Int? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String, displayFormat: String? = nil, isSelected: Bool, max: Int? = nil, min: Int? = nil, queryFormat: String? = nil, selectedMax: Int? = nil, selectedMin: Int? = nil, value: [String: Any]) {
            
            self.count = count
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.display = display
            
            self.displayFormat = displayFormat
            
            self.isSelected = isSelected
            
            self.max = max
            
            self.min = min
            
            self.queryFormat = queryFormat
            
            self.selectedMax = selectedMax
            
            self.selectedMin = selectedMin
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                do {
                    displayFormat = try container.decode(String.self, forKey: .displayFormat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
            
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    queryFormat = try container.decode(String.self, forKey: .queryFormat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selectedMax = try container.decode(Int.self, forKey: .selectedMax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selectedMin = try container.decode(Int.self, forKey: .selectedMin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
            
            
            
            
            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
            
            
            
            
            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductFiltersValue
        Used By: Catalog
    */

    class ProductFiltersValue: Codable {
        
        
        public var count: Int?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var display: String
        
        public var displayFormat: String?
        
        public var isSelected: Bool
        
        public var max: Int?
        
        public var min: Int?
        
        public var queryFormat: String?
        
        public var selectedMax: Int?
        
        public var selectedMin: Int?
        
        public var value: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case display = "display"
            
            case displayFormat = "display_format"
            
            case isSelected = "is_selected"
            
            case max = "max"
            
            case min = "min"
            
            case queryFormat = "query_format"
            
            case selectedMax = "selected_max"
            
            case selectedMin = "selected_min"
            
            case value = "value"
            
        }

        public init(count: Int? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, display: String, displayFormat: String? = nil, isSelected: Bool, max: Int? = nil, min: Int? = nil, queryFormat: String? = nil, selectedMax: Int? = nil, selectedMin: Int? = nil, value: [String: Any]) {
            
            self.count = count
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.display = display
            
            self.displayFormat = displayFormat
            
            self.isSelected = isSelected
            
            self.max = max
            
            self.min = min
            
            self.queryFormat = queryFormat
            
            self.selectedMax = selectedMax
            
            self.selectedMin = selectedMin
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                display = try container.decode(String.self, forKey: .display)
                
            
            
            
                do {
                    displayFormat = try container.decode(String.self, forKey: .displayFormat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
            
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    queryFormat = try container.decode(String.self, forKey: .queryFormat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selectedMax = try container.decode(Int.self, forKey: .selectedMax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selectedMin = try container.decode(Int.self, forKey: .selectedMin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
            
            
            
            
            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
            
            
            
            
            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


