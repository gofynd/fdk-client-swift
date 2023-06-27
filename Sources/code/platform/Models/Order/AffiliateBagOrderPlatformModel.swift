

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var unitPrice: Double

        public var companyId: Int

        public var discount: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var sku: String

        public var fyndStoreId: String

        public var storeId: Int

        public var deliveryCharge: Double

        public var id: String

        public var itemSize: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case discount

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case identifier

            case sku

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.discount = discount

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var unitPrice: Double

        public var companyId: Int

        public var discount: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var sku: String

        public var fyndStoreId: String

        public var storeId: Int

        public var deliveryCharge: Double

        public var id: String

        public var itemSize: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case discount

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case identifier

            case sku

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.discount = discount

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
