

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var unitPrice: Double

        public var priceEffective: Double

        public var sku: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var id: String

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var discount: Double

        public var itemSize: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var storeId: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case sku

            case identifier

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.sku = sku

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
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

        public var unitPrice: Double

        public var priceEffective: Double

        public var sku: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var id: String

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var discount: Double

        public var itemSize: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var storeId: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case sku

            case identifier

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case discount

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.sku = sku

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
