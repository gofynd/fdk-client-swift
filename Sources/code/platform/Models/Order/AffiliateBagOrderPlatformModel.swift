

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var companyId: Int

        public var priceMarked: Double

        public var hsnCodeId: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var quantity: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var discount: Double

        public var avlQty: Int

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var storeId: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case identifier

            case itemId = "item_id"

            case discount

            case avlQty = "avl_qty"

            case sku

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.identifier = identifier

            self.itemId = itemId

            self.discount = discount

            self.avlQty = avlQty

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

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

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var companyId: Int

        public var priceMarked: Double

        public var hsnCodeId: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var quantity: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var discount: Double

        public var avlQty: Int

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var storeId: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case identifier

            case itemId = "item_id"

            case discount

            case avlQty = "avl_qty"

            case sku

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.identifier = identifier

            self.itemId = itemId

            self.discount = discount

            self.avlQty = avlQty

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
