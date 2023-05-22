

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var companyId: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var storeId: Int

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var quantity: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var sku: String

        public var itemSize: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case quantity

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case sku

            case itemSize = "item_size"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.sku = sku

            self.itemSize = itemSize

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var companyId: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var storeId: Int

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var quantity: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var sku: String

        public var itemSize: String

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case quantity

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case sku

            case itemSize = "item_size"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.companyId = companyId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.sku = sku

            self.itemSize = itemSize

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
