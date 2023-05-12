

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var quantity: Int

        public var discount: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemSize: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemId: Int

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case identifier

            case quantity

            case discount

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.quantity = quantity

            self.discount = discount

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

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
        public var sku: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var quantity: Int

        public var discount: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemSize: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var modifiedOn: String

        public var amountPaid: Double

        public var itemId: Int

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case identifier

            case quantity

            case discount

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.quantity = quantity

            self.discount = discount

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
