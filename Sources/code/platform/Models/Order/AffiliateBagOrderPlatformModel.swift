

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var hsnCodeId: String

        public var companyId: Int

        public var discount: Double

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var sku: String

        public var storeId: Int

        public var itemId: Int

        public var identifier: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case discount

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case sku

            case storeId = "store_id"

            case itemId = "item_id"

            case identifier

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.discount = discount

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.sku = sku

            self.storeId = storeId

            self.itemId = itemId

            self.identifier = identifier

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var hsnCodeId: String

        public var companyId: Int

        public var discount: Double

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var sku: String

        public var storeId: Int

        public var itemId: Int

        public var identifier: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case discount

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case sku

            case storeId = "store_id"

            case itemId = "item_id"

            case identifier

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.discount = discount

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.sku = sku

            self.storeId = storeId

            self.itemId = itemId

            self.identifier = identifier

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
