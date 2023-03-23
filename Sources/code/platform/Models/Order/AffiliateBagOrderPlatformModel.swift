

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var hsnCodeId: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var storeId: Int

        public var sku: String

        public var id: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case sku

            case id = "_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case discount

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.sku = sku

            self.id = id

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var hsnCodeId: String

        public var transferPrice: Int

        public var amountPaid: Double

        public var itemId: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var storeId: Int

        public var sku: String

        public var id: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var discount: Double

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case sku

            case id = "_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case discount

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.sku = sku

            self.id = id

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
