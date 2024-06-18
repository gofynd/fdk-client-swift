

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: ProductTable
        Used By: FileStorage
    */

    class ProductTable: Codable {
        
        
        public var totalItems: Double?
        
        public var products: [ItemsProductTable]?
        
        public var grandTotal: Double?
        
        public var deliveryCharges: Double?
        
        public var deliveryChargeText: String?
        
        public var codCharges: Double?
        
        public var fyndDiscounts: Double?
        
        public var totalInWords: String?
        
        public var giftPrice: Double?
        
        public var totalQuantity: Double?
        
        public var subTotal: Double?
        
        public var discount: Double?
        
        public var promotion: Double?
        
        public var coupon: Double?
        
        public var reward: Double?
        
        public var roundOff: Double?
        
        public var totalValueOfGoods: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalItems = "total_items"
            
            case products = "products"
            
            case grandTotal = "grand_total"
            
            case deliveryCharges = "delivery_charges"
            
            case deliveryChargeText = "delivery_charge_text"
            
            case codCharges = "cod_charges"
            
            case fyndDiscounts = "fynd_discounts"
            
            case totalInWords = "total_in_words"
            
            case giftPrice = "gift_price"
            
            case totalQuantity = "total_quantity"
            
            case subTotal = "sub_total"
            
            case discount = "discount"
            
            case promotion = "promotion"
            
            case coupon = "coupon"
            
            case reward = "reward"
            
            case roundOff = "round_off"
            
            case totalValueOfGoods = "total_value_of_goods"
            
        }

        public init(codCharges: Double? = nil, coupon: Double? = nil, deliveryCharges: Double? = nil, deliveryChargeText: String? = nil, discount: Double? = nil, fyndDiscounts: Double? = nil, giftPrice: Double? = nil, grandTotal: Double? = nil, products: [ItemsProductTable]? = nil, promotion: Double? = nil, reward: Double? = nil, roundOff: Double? = nil, subTotal: Double? = nil, totalInWords: String? = nil, totalItems: Double? = nil, totalQuantity: Double? = nil, totalValueOfGoods: Double? = nil) {
            
            self.totalItems = totalItems
            
            self.products = products
            
            self.grandTotal = grandTotal
            
            self.deliveryCharges = deliveryCharges
            
            self.deliveryChargeText = deliveryChargeText
            
            self.codCharges = codCharges
            
            self.fyndDiscounts = fyndDiscounts
            
            self.totalInWords = totalInWords
            
            self.giftPrice = giftPrice
            
            self.totalQuantity = totalQuantity
            
            self.subTotal = subTotal
            
            self.discount = discount
            
            self.promotion = promotion
            
            self.coupon = coupon
            
            self.reward = reward
            
            self.roundOff = roundOff
            
            self.totalValueOfGoods = totalValueOfGoods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([ItemsProductTable].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grandTotal = try container.decode(Double.self, forKey: .grandTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryChargeText = try container.decode(String.self, forKey: .deliveryChargeText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndDiscounts = try container.decode(Double.self, forKey: .fyndDiscounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalInWords = try container.decode(String.self, forKey: .totalInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftPrice = try container.decode(Double.self, forKey: .giftPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Double.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subTotal = try container.decode(Double.self, forKey: .subTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotion = try container.decode(Double.self, forKey: .promotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reward = try container.decode(Double.self, forKey: .reward)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    roundOff = try container.decode(Double.self, forKey: .roundOff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalValueOfGoods = try container.decode(Double.self, forKey: .totalValueOfGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(grandTotal, forKey: .grandTotal)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeText, forKey: .deliveryChargeText)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(fyndDiscounts, forKey: .fyndDiscounts)
            
            
            
            
            try? container.encodeIfPresent(totalInWords, forKey: .totalInWords)
            
            
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(subTotal, forKey: .subTotal)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(promotion, forKey: .promotion)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(reward, forKey: .reward)
            
            
            
            
            try? container.encodeIfPresent(roundOff, forKey: .roundOff)
            
            
            
            
            try? container.encodeIfPresent(totalValueOfGoods, forKey: .totalValueOfGoods)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: ProductTable
        Used By: FileStorage
    */

    class ProductTable: Codable {
        
        
        public var totalItems: Double?
        
        public var products: [ItemsProductTable]?
        
        public var grandTotal: Double?
        
        public var deliveryCharges: Double?
        
        public var deliveryChargeText: String?
        
        public var codCharges: Double?
        
        public var fyndDiscounts: Double?
        
        public var totalInWords: String?
        
        public var giftPrice: Double?
        
        public var totalQuantity: Double?
        
        public var subTotal: Double?
        
        public var discount: Double?
        
        public var promotion: Double?
        
        public var coupon: Double?
        
        public var reward: Double?
        
        public var roundOff: Double?
        
        public var totalValueOfGoods: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalItems = "total_items"
            
            case products = "products"
            
            case grandTotal = "grand_total"
            
            case deliveryCharges = "delivery_charges"
            
            case deliveryChargeText = "delivery_charge_text"
            
            case codCharges = "cod_charges"
            
            case fyndDiscounts = "fynd_discounts"
            
            case totalInWords = "total_in_words"
            
            case giftPrice = "gift_price"
            
            case totalQuantity = "total_quantity"
            
            case subTotal = "sub_total"
            
            case discount = "discount"
            
            case promotion = "promotion"
            
            case coupon = "coupon"
            
            case reward = "reward"
            
            case roundOff = "round_off"
            
            case totalValueOfGoods = "total_value_of_goods"
            
        }

        public init(codCharges: Double? = nil, coupon: Double? = nil, deliveryCharges: Double? = nil, deliveryChargeText: String? = nil, discount: Double? = nil, fyndDiscounts: Double? = nil, giftPrice: Double? = nil, grandTotal: Double? = nil, products: [ItemsProductTable]? = nil, promotion: Double? = nil, reward: Double? = nil, roundOff: Double? = nil, subTotal: Double? = nil, totalInWords: String? = nil, totalItems: Double? = nil, totalQuantity: Double? = nil, totalValueOfGoods: Double? = nil) {
            
            self.totalItems = totalItems
            
            self.products = products
            
            self.grandTotal = grandTotal
            
            self.deliveryCharges = deliveryCharges
            
            self.deliveryChargeText = deliveryChargeText
            
            self.codCharges = codCharges
            
            self.fyndDiscounts = fyndDiscounts
            
            self.totalInWords = totalInWords
            
            self.giftPrice = giftPrice
            
            self.totalQuantity = totalQuantity
            
            self.subTotal = subTotal
            
            self.discount = discount
            
            self.promotion = promotion
            
            self.coupon = coupon
            
            self.reward = reward
            
            self.roundOff = roundOff
            
            self.totalValueOfGoods = totalValueOfGoods
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([ItemsProductTable].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grandTotal = try container.decode(Double.self, forKey: .grandTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryChargeText = try container.decode(String.self, forKey: .deliveryChargeText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndDiscounts = try container.decode(Double.self, forKey: .fyndDiscounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalInWords = try container.decode(String.self, forKey: .totalInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftPrice = try container.decode(Double.self, forKey: .giftPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Double.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subTotal = try container.decode(Double.self, forKey: .subTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotion = try container.decode(Double.self, forKey: .promotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reward = try container.decode(Double.self, forKey: .reward)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    roundOff = try container.decode(Double.self, forKey: .roundOff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalValueOfGoods = try container.decode(Double.self, forKey: .totalValueOfGoods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(grandTotal, forKey: .grandTotal)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeText, forKey: .deliveryChargeText)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(fyndDiscounts, forKey: .fyndDiscounts)
            
            
            
            
            try? container.encodeIfPresent(totalInWords, forKey: .totalInWords)
            
            
            
            
            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(subTotal, forKey: .subTotal)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(promotion, forKey: .promotion)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(reward, forKey: .reward)
            
            
            
            
            try? container.encodeIfPresent(roundOff, forKey: .roundOff)
            
            
            
            
            try? container.encodeIfPresent(totalValueOfGoods, forKey: .totalValueOfGoods)
            
            
        }
        
    }
}


