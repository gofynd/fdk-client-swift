

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: Bags
        Used By: Order
    */
    class Bags: Codable {
        
        public var deliveryDate: String?
        
        public var lineNumber: Int?
        
        public var currencySymbol: String?
        
        public var item: Item?
        
        public var appliedPromos: [AppliedPromos]?
        
        public var quantity: Double?
        
        public var prices: Prices?
        
        public var canCancel: Bool?
        
        public var canReturn: Bool?
        
        public var id: Int?
        
        public var returnableDate: String?
        
        public var financialBreakup: [FinancialBreakup]?
        
        public var parentPromoBags: [String: Any]?
        
        public var meta: [String: Any]?
        
        public var currencyCode: String?
        
        public var sellerIdentifier: String?
        
        public var currentStatus: CurrentStatus?
        
        public var article: Article?
        
        public var charges: [PriceAdjustmentCharge]?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryDate = "delivery_date"
            
            case lineNumber = "line_number"
            
            case currencySymbol = "currency_symbol"
            
            case item = "item"
            
            case appliedPromos = "applied_promos"
            
            case quantity = "quantity"
            
            case prices = "prices"
            
            case canCancel = "can_cancel"
            
            case canReturn = "can_return"
            
            case id = "id"
            
            case returnableDate = "returnable_date"
            
            case financialBreakup = "financial_breakup"
            
            case parentPromoBags = "parent_promo_bags"
            
            case meta = "meta"
            
            case currencyCode = "currency_code"
            
            case sellerIdentifier = "seller_identifier"
            
            case currentStatus = "current_status"
            
            case article = "article"
            
            case charges = "charges"
            
        }

        public init(appliedPromos: [AppliedPromos]? = nil, article: Article? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, charges: [PriceAdjustmentCharge]? = nil, currencyCode: String? = nil, currencySymbol: String? = nil, currentStatus: CurrentStatus? = nil, deliveryDate: String? = nil, financialBreakup: [FinancialBreakup]? = nil, id: Int? = nil, item: Item? = nil, lineNumber: Int? = nil, meta: [String: Any]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, quantity: Double? = nil, returnableDate: String? = nil, sellerIdentifier: String? = nil) {
            
            self.deliveryDate = deliveryDate
            
            self.lineNumber = lineNumber
            
            self.currencySymbol = currencySymbol
            
            self.item = item
            
            self.appliedPromos = appliedPromos
            
            self.quantity = quantity
            
            self.prices = prices
            
            self.canCancel = canCancel
            
            self.canReturn = canReturn
            
            self.id = id
            
            self.returnableDate = returnableDate
            
            self.financialBreakup = financialBreakup
            
            self.parentPromoBags = parentPromoBags
            
            self.meta = meta
            
            self.currencyCode = currencyCode
            
            self.sellerIdentifier = sellerIdentifier
            
            self.currentStatus = currentStatus
            
            self.article = article
            
            self.charges = charges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
            
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
            
            
            
            do {
                item = try container.decode(Item.self, forKey: .item)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Double.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                prices = try container.decode(Prices.self, forKey: .prices)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(Int.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnableDate = try container.decode(String.self, forKey: .returnableDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                article = try container.decode(Article.self, forKey: .article)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
        }
        
    }
}
