

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var id: String

        public var sku: String

        public var discount: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var companyId: Int

        public var modifiedOn: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var itemId: Int

        public var transferPrice: Int

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var quantity: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case id = "_id"

            case sku

            case discount

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case quantity

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.id = id

            self.sku = sku

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var id: String

        public var sku: String

        public var discount: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var companyId: Int

        public var modifiedOn: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var itemId: Int

        public var transferPrice: Int

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var quantity: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case id = "_id"

            case sku

            case discount

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case quantity

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.id = id

            self.sku = sku

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
