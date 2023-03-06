

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var id: String

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var storeId: Int

        public var sku: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case discount

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case identifier

            case itemSize = "item_size"

            case id = "_id"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case storeId = "store_id"

            case sku

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.itemSize = itemSize

            self.id = id

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.storeId = storeId

            self.sku = sku

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

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
        public var priceMarked: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var id: String

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var storeId: Int

        public var sku: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case discount

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case identifier

            case itemSize = "item_size"

            case id = "_id"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case storeId = "store_id"

            case sku

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.itemSize = itemSize

            self.id = id

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.storeId = storeId

            self.sku = sku

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
