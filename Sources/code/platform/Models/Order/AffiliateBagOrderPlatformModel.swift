

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var transferPrice: Int

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var companyId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var id: String

        public var affiliateStoreId: String

        public var discount: Double

        public var sku: String

        public var hsnCodeId: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case identifier

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sku

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

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
        public var quantity: Int

        public var transferPrice: Int

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var fyndStoreId: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var companyId: Int

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var id: String

        public var affiliateStoreId: String

        public var discount: Double

        public var sku: String

        public var hsnCodeId: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case identifier

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sku

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
