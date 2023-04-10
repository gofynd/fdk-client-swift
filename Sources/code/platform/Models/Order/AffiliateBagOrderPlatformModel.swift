

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public var companyId: Int

        public var discount: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var itemId: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var hsnCodeId: String

        public var itemSize: String

        public var storeId: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case discount

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case sku

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.companyId = companyId

            self.discount = discount

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

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

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public var companyId: Int

        public var discount: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var itemId: Int

        public var identifier: [String: Any]

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var hsnCodeId: String

        public var itemSize: String

        public var storeId: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case discount

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case identifier

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case sku

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.companyId = companyId

            self.discount = discount

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.identifier = identifier

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
