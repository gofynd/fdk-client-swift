

import Foundation
public extension PlatformClient {
    /*
         Model: Methods
         Used By: Configuration
     */

    class Methods: Codable {
        public var pl: PaymentModeConfig?

        public var card: PaymentModeConfig?

        public var nb: PaymentModeConfig?

        public var wl: PaymentModeConfig?

        public var ps: PaymentModeConfig?

        public var upi: PaymentModeConfig?

        public var qr: PaymentModeConfig?

        public var cod: PaymentModeConfig?

        public var pp: PaymentModeConfig?

        public var jp: PaymentModeConfig?

        public var pac: PaymentModeConfig?

        public var fc: PaymentModeConfig?

        public var jiopp: PaymentModeConfig?

        public var stripepg: PaymentModeConfig?

        public var juspaypg: PaymentModeConfig?

        public var payubizpg: PaymentModeConfig?

        public var payumoneypg: PaymentModeConfig?

        public var rupifipg: PaymentModeConfig?

        public var simpl: PaymentModeConfig?

        public enum CodingKeys: String, CodingKey {
            case pl

            case card

            case nb

            case wl

            case ps

            case upi

            case qr

            case cod

            case pp

            case jp

            case pac

            case fc

            case jiopp

            case stripepg

            case juspaypg

            case payubizpg

            case payumoneypg

            case rupifipg

            case simpl
        }

        public init(card: PaymentModeConfig? = nil, cod: PaymentModeConfig? = nil, fc: PaymentModeConfig? = nil, jiopp: PaymentModeConfig? = nil, jp: PaymentModeConfig? = nil, juspaypg: PaymentModeConfig? = nil, nb: PaymentModeConfig? = nil, pac: PaymentModeConfig? = nil, payubizpg: PaymentModeConfig? = nil, payumoneypg: PaymentModeConfig? = nil, pl: PaymentModeConfig? = nil, pp: PaymentModeConfig? = nil, ps: PaymentModeConfig? = nil, qr: PaymentModeConfig? = nil, rupifipg: PaymentModeConfig? = nil, simpl: PaymentModeConfig? = nil, stripepg: PaymentModeConfig? = nil, upi: PaymentModeConfig? = nil, wl: PaymentModeConfig? = nil) {
            self.pl = pl

            self.card = card

            self.nb = nb

            self.wl = wl

            self.ps = ps

            self.upi = upi

            self.qr = qr

            self.cod = cod

            self.pp = pp

            self.jp = jp

            self.pac = pac

            self.fc = fc

            self.jiopp = jiopp

            self.stripepg = stripepg

            self.juspaypg = juspaypg

            self.payubizpg = payubizpg

            self.payumoneypg = payumoneypg

            self.rupifipg = rupifipg

            self.simpl = simpl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pl = try container.decode(PaymentModeConfig.self, forKey: .pl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                card = try container.decode(PaymentModeConfig.self, forKey: .card)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nb = try container.decode(PaymentModeConfig.self, forKey: .nb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                wl = try container.decode(PaymentModeConfig.self, forKey: .wl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ps = try container.decode(PaymentModeConfig.self, forKey: .ps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upi = try container.decode(PaymentModeConfig.self, forKey: .upi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                qr = try container.decode(PaymentModeConfig.self, forKey: .qr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cod = try container.decode(PaymentModeConfig.self, forKey: .cod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pp = try container.decode(PaymentModeConfig.self, forKey: .pp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jp = try container.decode(PaymentModeConfig.self, forKey: .jp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pac = try container.decode(PaymentModeConfig.self, forKey: .pac)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fc = try container.decode(PaymentModeConfig.self, forKey: .fc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jiopp = try container.decode(PaymentModeConfig.self, forKey: .jiopp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripepg = try container.decode(PaymentModeConfig.self, forKey: .stripepg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspaypg = try container.decode(PaymentModeConfig.self, forKey: .juspaypg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payubizpg = try container.decode(PaymentModeConfig.self, forKey: .payubizpg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payumoneypg = try container.decode(PaymentModeConfig.self, forKey: .payumoneypg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifipg = try container.decode(PaymentModeConfig.self, forKey: .rupifipg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(PaymentModeConfig.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pl, forKey: .pl)

            try? container.encodeIfPresent(card, forKey: .card)

            try? container.encodeIfPresent(nb, forKey: .nb)

            try? container.encodeIfPresent(wl, forKey: .wl)

            try? container.encodeIfPresent(ps, forKey: .ps)

            try? container.encodeIfPresent(upi, forKey: .upi)

            try? container.encodeIfPresent(qr, forKey: .qr)

            try? container.encodeIfPresent(cod, forKey: .cod)

            try? container.encodeIfPresent(pp, forKey: .pp)

            try? container.encodeIfPresent(jp, forKey: .jp)

            try? container.encodeIfPresent(pac, forKey: .pac)

            try? container.encodeIfPresent(fc, forKey: .fc)

            try? container.encodeIfPresent(jiopp, forKey: .jiopp)

            try? container.encodeIfPresent(stripepg, forKey: .stripepg)

            try? container.encodeIfPresent(juspaypg, forKey: .juspaypg)

            try? container.encodeIfPresent(payubizpg, forKey: .payubizpg)

            try? container.encodeIfPresent(payumoneypg, forKey: .payumoneypg)

            try? container.encodeIfPresent(rupifipg, forKey: .rupifipg)

            try? container.encodeIfPresent(simpl, forKey: .simpl)
        }
    }
}
